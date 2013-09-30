VideoMux
========

Hybrid Instruments Proj.

8-1 Analog video multiplexer example project. 

The Goggles with OSC contains a python script to interface the touchOSC app on the iphone with the ardunio powering the video mux. Serial port and ip address need to be configured. This file also has two dependencies: pySerial (http://pyserial.sourceforge.net/) and OSC (https://trac.v2.nl/wiki/pyOSC). It was run using python 2.7.

The VideoMultiplexerSerialInput file contains the ardunio code that is used to control the mux. Send a number over serial to tell the ardunio which channel to select.
