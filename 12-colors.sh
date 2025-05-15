#!/bin/bash

USERID=$(id -u) #taking userid
TIMESTAMP=$(date +%F-%H-%M-%S) #taking timestamp(at what time it is executing)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1) #from script name we  are removing .sh
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log #under tmp directory creating script_name-timestamp.log 
R="\e[31m"
G="\e[32m"
N="\e[0m"

echo "Script started executing at: $TIMESTAMP"

#writing a validate function
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2...$R FAILURE $N"
        exit 1
    else
        echo -e "$2...$G SUCCESS $N"    
    fi
}

#validating user
if [ $USERID -ne 0 ]
then
    echo "please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing MySQL"

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing MySQL"

dnf install dockerr -y &>>$LOGFILE
VALIDATE $? "Installing Docker"