PROJECTNAME := $(shell basename "$(PWD)")
PROJECTROOT := $(shell pwd)
MAKEFLAGS += --silent

build:
	@printf "Installing Netorare dependencies\n"
	@pip3 install -q -r $(PROJECTROOT)/services/netorare/requirements.txt
	@printf "Compiling Nakadashi\n"
	@go build -o nakadashi $(PROJECTROOT)/services/nakadashi/*.go
	@cd $(PROJECTROOT)/services/ahegao && npm install
	@printf "All done\n"
