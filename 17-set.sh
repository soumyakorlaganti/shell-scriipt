#!/bin/bash

set -e

failure(){
    echo "Failed at $1: $2"
}

trap 'failure ${LINENO} "$Bash_COMMAND"' ERR

USERID=$(id -u) #ERR

if [ $USERID -ne 0 ]
then
    echo "please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

dnf install myssxqlll -y
dnf install git -y


echo "is script proceeding?"