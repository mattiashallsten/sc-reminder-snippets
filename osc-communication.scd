// Finding out the local address of sclang -- it's easy to forget the 57120 port number:
NetAddr.localAddr;

// Listening for OSC messages
OSCFunc.trace(true);

// To turn it off:
OSCFunc.trace(false);

/*
To find out your computer's ip address:

MacOS:

Go into the system settings -> network, and it's written there.

Linux

At least on Debian, run the command "ip a" and look for the ip there
*/

