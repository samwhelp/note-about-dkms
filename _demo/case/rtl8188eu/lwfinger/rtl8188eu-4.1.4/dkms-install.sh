#!/usr/bin/env bash


mod_dkms_get_version () {

	cat ./.version

}

mod_dkms_install () {

	local version=$(mod_dkms_get_version)

	sudo git clone https://github.com/lwfinger/rtl8188eu.git /usr/src/rtl8188eu-$version
	sudo dkms add -m rtl8188eu -v $version
	sudo dkms autoinstall

}


__main__ () {
	mod_dkms_install
}

__main__
