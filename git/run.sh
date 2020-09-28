#!/usr/bin/env bash
# Author: wxnacy(wxnacy@gmail.com)
# Description:

git config --global user.name "${GIT_USERNAME}"
git config --global user.email "${GIT_EMAIL}"
git config --global credential.helper store
echo "https://${GIT_USERNAME}:${GIT_PASSWORD}@github.com" > ~/.git-credentials

while true
do
    echo `date`
    sleep 60
done
