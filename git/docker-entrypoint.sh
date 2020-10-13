#!/bin/sh
# Author: wxnacy(wxnacy@gmail.com)
# Description:

git config --global user.name "${GIT_USERNAME}"
git config --global user.email "${GIT_EMAIL}"
git config --global credential.helper store
echo "https://${GIT_USERNAME}:${GIT_PASSWORD}@github.com" > ~/.git-credentials

git $@
