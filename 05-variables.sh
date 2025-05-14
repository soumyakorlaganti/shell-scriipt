#!/bin/bash

#echo "please enter username::"

#read -s USERNAME #here USERNAME is variable

#echo "please enter password::"

#read -s PASSWORD

read -p "enter your username:" $USERNAME
read -p "enter your password:" $PASSWORD
read -s PASSWORD

echo "Username is: $USERNAME, password is: $PASSWORD"