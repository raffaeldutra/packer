build:
	packer build \
	-var 'version=1.2.0' \
	templates/centos-7.json