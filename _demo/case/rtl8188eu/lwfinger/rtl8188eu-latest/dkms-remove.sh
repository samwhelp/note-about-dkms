#/usr/bin/bash env

mod_dkms_get_version () {
	cat ./.version
}


mod_dkms_remove () {

	local version=$(mod_dkms_get_version)

	sudo dkms remove -m rtl8188eu -v $version --all
	sudo rm /usr/src/rtl8188eu-$version -rf

}


__main__ () {
	mod_dkms_remove
}

__main__
