""" Depends on pySerial, listens on UDP port for compass signal"""

import socket, serial, math, time, select

UDP_IP = '128.237.239.24'
UDP_PORT = 4000
UDP_TIMOUT = .1
SER_PORT = 9 # COM 10
SER_BAUD = 115200
SER_TIMEOUT = 15 # sec
MAXLINE = 32

MAX_CHANNELS = 8 # on mux

# Arduino Serial Com
ser = serial.Serial()
ser.baudrate = SER_BAUD
ser.port = SER_PORT
ser.timeout = SER_TIMEOUT
ser.open()

# Listen at socket for iPhone
sock = socket.socket(socket.AF_INET, # Internet
                     socket.SOCK_DGRAM) # UDP
sock.bind((UDP_IP, UDP_PORT))

sock.setblocking(0)



print "Online"

while True:
    
    ready = select.select([sock], [], [], UDP_TIMOUT)
    if ready[0]:
        data, addr = sock.recvfrom(1024) # buffer size is 1024 bytes
    
    # parse compass data
    try:

        compassDir = float(data)
        channel = int(math.floor(compassDir*MAX_CHANNELS/360)) # 360 degrees, sub 1 because 0 indexed

        print "received:", repr(data)
        print "parsed:  ", compassDir
        print "channel: ", channel
        
        ser.write(channel)
        print "Arduino: ", ser.readline(MAXLINE) # Ardunio acknowledgement

    except:
        print "Incorrectly formated UDP"