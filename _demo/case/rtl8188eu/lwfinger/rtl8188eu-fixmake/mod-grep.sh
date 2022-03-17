#!/usr/bin/env bash


mod_mod_grep () {
	lsmod | grep 8188eu
}


__main__ () {
	mod_mod_grep
}

__main__
