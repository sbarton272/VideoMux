import OSC, serial
import time, threading
import collections
from numpy import mean

SLEEP_TIME = 1
SAMPLE_TIME = 50
MAX_VIDEO = 8
WINDOW_SIZE = 50

# tupple with ip, port
receive_address = ('128.237.167.128', 5005)

samples = 0

SER_PORT = 9 # COM 10
SER_BAUD = 9600
SER_TIMEOUT = 3 # sec
MAXLINE = 32
THRESHOLD = .25

# List to store accelerometer data
xData = collections.deque(maxlen=WINDOW_SIZE)

currentVideo = 0


# OSC Server. there are three different types of server. 
s = OSC.OSCServer(receive_address) # basic
##s = OSC.ThreadingOSCServer(receive_address) # threading
##s = OSC.ForkingOSCServer(receive_address) # forking

# this registers a 'default' handler (for unmatched messages), 
# an /'error' handler, an '/info' handler.
# And, if the client supports it, a '/subscribe' & '/unsubscribe' handler
s.addDefaultHandlers()

# Arduino Serial Com
ser = serial.Serial()
ser.baudrate = SER_BAUD
ser.port = SER_PORT
ser.timeout = SER_TIMEOUT
try:
    ser.open()
except:
    print "Ardunio not connected"
    exit(0)

# cycle video with ardunio
def cycleVideo():
    global currentVideo # horrible thing to do

    xVal = mean(xData)
    #print xVal

    inc = 0

    # decide increment up/down for video
    if (xVal >= THRESHOLD):
        inc = 1
    if (xVal <= -THRESHOLD):
        inc = -1

    currentVideo += inc
    # loop back around
    if (currentVideo >= MAX_VIDEO): 
        currentVideo = 0
    elif (currentVideo < 0):
        currentVideo = MAX_VIDEO-1

    print "Current Video:", currentVideo

    # write to ardunio
    if (ser.isOpen()):
        ser.write(currentVideo)
        # print ser.readline()
    else:
        print "Serial disconnected"
        exit(0)

# define a message-handler function for the server to call.
def accel_handler(addr, tags, stuff, source):
    global samples # horrible thing to do

    samples += 1

    #print "---"
    #print "received new osc msg from %s" % OSC.getUrlStr(source)
    #print "with addr : %s" % addr
    #print "typetags %s" % tags
    #print "data %s" % stuff
    #print "---"

    # store x accel data
    xData.append(stuff[1])
    #print xData

    if (samples == SAMPLE_TIME):
        cycleVideo() # communicate with ardunio
        samples = 0


s.addMsgHandler("/accxyz", accel_handler) # adding our function


# just checking which handlers we have added
print "Registered Callback-functions are :"
for addr in s.getOSCAddressSpace():
    print addr


# Start OSCServer
print "\nStarting OSCServer. Use ctrl-C to quit."
st = threading.Thread( target = s.serve_forever )
st.start()


try :
    while 1 :
        time.sleep(SLEEP_TIME)

except KeyboardInterrupt :
    print "\nClosing OSCServer."
    s.close()
    print "Waiting for Server-thread to finish"
    st.join()
    print "Done"