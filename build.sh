#!/usr/bin/env Bash
# Rafael Dutra <raffaeldutra@gmail.com>
# Build file

if [ "x$1" == "x" ]
then
    echo "You need to pass a distro name"
    exit 1
fi

[ $(lsb_release >/dev/null 2>/dev/null) ] && declare linux=1 || declare linux=0

if [ "${linux}" -eq 1 ]
then
    declare packer="packer.exe"
else
    declare packer="packer"
fi

if [ ! -f "${packer}" -o ! -x "${packer}" ]
then
    echo "Packer needs execution permission or it can not be found"
    exit 1
fi

declare distro="$1"

if [ "$2" == "-f" ]
then
    ./${packer} build -force -var-file=variables/${distro}.json templates/${distro}.json
else
  ./${packer} build -var-file=variables/${distro}.json templates/${distro}.json
fi
