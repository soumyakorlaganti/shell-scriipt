#!/bin/bash

COURSE="Devops from Current Script"

echo "Before calling other script, course: $COURSE"
echo "process ID of current shell script: $$"

#./16-other-script.sh
source ./16-other-script.sh

echo "After calling other script, course: $COURSE"