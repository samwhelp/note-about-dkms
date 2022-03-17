default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make prepare'
	@echo
	@echo '	$$ make dkms-install'
	@echo
	@echo '	$$ make dkms-remove'
	@echo
	@echo '	$$ make mod-probe'
	@echo
	@echo '	$$ make mod-grep'
	@echo
	@echo '	$$ make mod-info'
	@echo
.PHONY: help

prepare:
	./prepare.sh
.PHONY: prepare


dkms-install:
	./dkms-install.sh
.PHONY: dkms-install


dkms-remove:
	./dkms-remove.sh
.PHONY: dkms-remove


mod-probe:
	./mod-probe.sh
.PHONY: mod-probe


mod-grep:
	./mod-grep.sh
.PHONY: mod-grep


mod-info:
	./mod-info.sh
.PHONY: mod-info
