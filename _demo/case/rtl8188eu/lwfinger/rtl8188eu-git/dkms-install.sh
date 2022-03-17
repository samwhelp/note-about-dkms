#!/usr/bin/env bash


mod_dkms_install () {

	sudo git clone https://github.com/lwfinger/rtl8188eu.git /usr/src/rtl8188eu-git
	sudo sed -i 's/PACKAGE_VERSION=.*/PACKAGE_VERSION="git"/g' /usr/src/rtl8188eu-git/dkms.conf
	sudo dkms add -m rtl8188eu -v git
	sudo dkms autoinstall

}


__main__ () {
	mod_dkms_install
}

__main__
