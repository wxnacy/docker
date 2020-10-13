#!/bin/bash
# Author: wxnacy(wxnacy@gmail.com)
# Description:

git config --global user.name "${GIT_USERNAME}"
git config --global user.email "${GIT_EMAIL}"
git config --global credential.helper store
echo "https://${GIT_USERNAME}:${GIT_PASSWORD}@github.com" > ~/.git-credentials

cd /root/work

echo `ls`
echo $@
cmd=$1
if [ $cmd == 'commit' ]
then
    arg=$2
    msg=${@/$1/}
    msg=${@/$2/}
    echo  $msg
    echo 'commit', $arg, $msg
    git commit $arg "${msg}"
else
    git $@
fi

# git $@
# /bin/bash
