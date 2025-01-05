#!/bin/bash
name="Rohit"
ocuupation="Software Engineer"
directory=$(pwd) # capturing output of a command in a variable
echo "Hello my name is $name"
echo "I work as $ocuupation "
echo "you are executing this command in $directory directory"
echo "your username is $USER" # here USER is environment variable
