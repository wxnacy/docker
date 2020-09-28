#!/usr/bin/env bash
# Author: wxnacy(wxnacy@gmail.com)
# Description:

name=$1

docker build -f $name/Dockerfile -t wxnacy/$name ./$name
