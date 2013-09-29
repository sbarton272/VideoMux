"Depends on pySerial and OSC (included)"

import OSC, serial
import time, threading
import collections

# tupple with ip, port
receiveAddress = ('128.237.167.128', 5008)
ardunioPort = 9 # COM 10

videoMux = object()

def accel_handler(addr, tags, stuff, source):

    global videoMux

    videoMux.samples += 1

    # store x accel data
    videoMux.xData.append(stuff[1])

    if (videoMux.samples == videoMux.SAMPLE_TIME):
        videoMux.cycleVideo() # communicate with ardunio
        videoMux.samples = 0

class VideoMux(object):

    def __init__(self, receiveAddress, ardunioPort):
        self.receiveAddress = receiveAddress
        self.SLEEP_TIME = 1
        self.SAMPLE_TIME = 50
        self.MAX_VIDEO = 8
        self.WINDOW_SIZE = 50
        self.SER_PORT = ardunioPort
        self.SER_BAUD = 9600
        self.SER_TIMEOUT = 3 # sec
        self.MAXLINE = 32
        self.THRESHOLD = .25
        self.samples = 0
        
        # List to store accelerometer data
        self.xData = collections.deque(maxlen=self.WINDOW_SIZE)
        
        self.currentVideo = 0 
        
        self.s = OSC.OSCServer(receiveAddress)

        self.setupSerial()
        self.setupOSC()


    def main(self):
        try :
            while 1 :
                time.sleep(self.SLEEP_TIME)

        except KeyboardInterrupt :
            print "\nClosing OSCServer."
            self.s.close()
            print "Waiting for Server-thread to finish"
            self.st.join()
            print "Done"

    def setupOSC(self):
        "install handelers"

        # this registers a 'default' handler (for unmatched messages), 
        # an /'error' handler, an '/info' handler.
        # And, if the client supports it, a '/subscribe' & '/unsubscribe' handler
        self.s.addDefaultHandlers()
        self.s.addMsgHandler("/accxyz", accel_handler) # adding our function

        # just checking which handlers we have added
        print "Registered Callback-functions are :"
        for addr in self.s.getOSCAddressSpace():
            print addr

        # Start OSCServer
        print "\nStarting OSCServer. Use ctrl-C to quit."
        self.st = threading.Thread( target = self.s.serve_forever )
        self.st.start()

    def setupSerial(self):
        "install the serial port to communicate with Ardunio"

        # Arduino Serial Com
        self.ser = serial.Serial()
        self.ser.baudrate   = self.SER_BAUD
        self.ser.port       = self.SER_PORT
        self.ser.timeout    = self.SER_TIMEOUT
        print "Trying port", self.ser.port
        try:
            self.ser.open()
        except:
            print "Ardunio not connected. Exiting"
            exit(0)

    def cycleVideo(self):
        "cylce video on the ardunio by sending it the channel"

        # take mean to reduce noise
        self.xVal = self.mean(self.xData)

        self.determineChannel()

        print "Current Video:", self.currentVideo

        # write to ardunio
        if (self.ser.isOpen()):
            self.ser.write(self.currentVideo)
        else:
            print "Serial disconnected"
            exit(0)

    def determineChannel(self):
        "determine which channel to send to ardunio"
        currentVideo = self.currentVideo 

        # decide increment up/down for video based on threshold
        if (self.xVal >= self.THRESHOLD):
            currentVideo += 1
        if (self.xVal <= -self.THRESHOLD):
            currentVideo -= 1

        # loop back around if overflow of video number
        if (currentVideo >= self.MAX_VIDEO): 
            currentVideo = 0
        elif (currentVideo < 0):
            currentVideo = self.MAX_VIDEO-1

        self.currentVideo = currentVideo

    def mean(self, data):
        l = list(data)
        return sum(l)/len(l)


# Run the script
videoMux = VideoMux(receiveAddress,ardunioPort)
videoMux.main()
