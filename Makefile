all : arp_spoofing

arp_spoofing: arp_spoof.o
	g++ -g -o arp_spoofing arp_spoof.o -lpcap

arp_spoof.o:
	g++ -g -c -o arp_spoof.o arp_spoof.cpp

clean:
	rm -f arp_spoofing
	rm -f *.o

