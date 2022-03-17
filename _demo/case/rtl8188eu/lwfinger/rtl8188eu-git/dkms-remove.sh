#/usr/bin/bash env


mod_dkms_remove () {

	sudo dkms remove -m rtl8188eu -v git --all
	sudo rm /usr/src/rtl8188eu-git -rf

}


__main__ () {
	mod_dkms_remove
}

__main__
