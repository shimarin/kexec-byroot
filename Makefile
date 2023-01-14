all: kexec-byroot

kexec-byroot: kexec-byroot.cpp
	g++ -std=c++20 -o $@ $^ -lmount

install: kexec-byroot
	mkdir -p /usr/local/sbin
	cp -a kexec-byroot /usr/local/sbin/

clean:
	rm -f kexec-byroot
