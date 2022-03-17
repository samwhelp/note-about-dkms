#!/usr/bin/env bash


mod_dkms_get_version () {
	grep '^PACKAGE_VERSION=' rtl8188eu/dkms.conf | awk -F '=' '{print $2}' | awk -F '"' '{print $2}'
}


mod_dkms_install () {
	git clone https://github.com/lwfinger/rtl8188eu.git
	sed -i 's/^all:.*/all: modules/g' ./rtl8188eu/Makefile

	local version=$(mod_dkms_get_version)

	echo $version > ./.version

	sudo dkms add ./rtl8188eu
	sudo dkms autoinstall

}


__main__ () {
	mod_dkms_install
}

__main__
