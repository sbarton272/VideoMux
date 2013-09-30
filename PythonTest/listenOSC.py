import socket, serial

UDP_IP = '128.237.167.128'
UDP_PORT = 4000
SER_PORT = 8 # COM 9
SER_BAUD = 9600
SER_TIMEOUT = 3 # sec
MAXLINE = 32

# Arduino Serial Com
# ser = serial.Serial()
# ser.baudrate = SER_BAUD
# ser.port = SER_PORT
# ser.timeout = SER_TIMEOUT
# ser.open()

# Listen at socket for iPhone
sock = socket.socket(socket.AF_INET, # Internet
                     socket.SOCK_DGRAM) # UDP
sock.bind((UDP_IP, UDP_PORT))

print "Online"

while True:
    data, addr = sock.recvfrom(1024) # buffer size is 1024 bytes
    
    print "received message:", repr(data), float(data)
    #print "parsed x accel:", xAccel

    #ser.write(xAccel)
    #print ser.readline(MAXLINE) # Ardunio acknowledgement
    