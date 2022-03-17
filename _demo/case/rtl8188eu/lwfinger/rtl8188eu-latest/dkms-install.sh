#!/usr/bin/env bash


mod_dkms_get_repo () {
	if [ -a ./rtl8188eu ]; then
		rm ./rtl8188eu -rf
	fi

	git clone https://github.com/lwfinger/rtl8188eu.git
}

mod_dkms_get_version () {

	mod_dkms_get_repo

	grep '^PACKAGE_VERSION=' rtl8188eu/dkms.conf | awk -F '=' '{print $2}' | awk -F '"' '{print $2}'
}

mod_dkms_install () {

	local version=$(mod_dkms_get_version)

	echo "$version" > .version

	sudo git clone https://github.com/lwfinger/rtl8188eu.git /usr/src/rtl8188eu-$version
	sudo dkms add -m rtl8188eu -v $version
	sudo dkms autoinstall

}


__main__ () {
	mod_dkms_install
}

__main__
