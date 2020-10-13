#!/usr/bin/env bash
# Author: wxnacy(wxnacy@gmail.com)
# Description:

name=$1

if [[ -f ${name}/run.sh ]]
then
    `${name}/run.sh`
else
    docker run -it --rm wxnacy/$name /bin/bash
fi
