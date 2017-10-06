all: help

help:	## Show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

update:	## Update submodules and force push changes
	git submodule foreach git pull origin master && git hotfix

.PHONY: all help update
