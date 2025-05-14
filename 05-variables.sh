#!/bin/bash

#echo "please enter username::"

#read -s USERNAME #here USERNAME is variable

#echo "please enter password::"

#read -s PASSWORD

read -s "enter your username:" $USERNAME
read -s "enter your password:" $PASSWORD


echo "Username is: $USERNAME, password is: $PASSWORD"