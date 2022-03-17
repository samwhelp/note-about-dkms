#!/usr/bin/env bash


mod_prepare () {
	sudo apt-get install git linux-headers-generic build-essential dkms
}


__main__ () {
	mod_prepare
}

__main__
