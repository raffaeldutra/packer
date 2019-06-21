RED    := $(shell tput -Txterm setaf 1)
GREEN  := $(shell tput -Txterm setaf 2)
YELLOW := $(shell tput -Txterm setaf 3)
BLUE   := $(shell tput -Txterm setaf 4)
PURPLE := $(shell tput -Txterm setaf 5)
CYAN   := $(shell tput -Txterm setaf 6)
WHITE  := $(shell tput -Txterm setaf 7)
RESET  := $(shell tput -Txterm sgr0)

.PHONY: help
help:
	@echo "build : Gera imagens."
	@echo "clean : ${RED}Remove todos os arquivos gerados pelo output${RESET}."

build:
	packer build \
	-var 'version=1.2.0' \
	templates/centos-7.json

clean:
	rm -rf builds packer_cache