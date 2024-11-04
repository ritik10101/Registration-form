#!/bin/bash

# Define colors for text output
Red=$'\e[1;31m'
Green=$'\e[1;32m'
Blue=$'\e[1;34m'
Reset=$'\e[0m'  # Reset color to default

# Display welcome message
echo $Red"*********************************************"
echo "*                                           *"
echo "*         Welcome To Chandigarh Tourism      *"
echo "*                                           *"
echo "*********************************************"$Reset
echo

# Prompt for user input
echo $Blue"---------------------------------------------"
echo "|       Please Enter Your Name:             |"
echo "---------------------------------------------"$Reset
read name

echo $Blue"---------------------------------------------"
echo "|       Please Enter Your Email ID:         |"
echo "---------------------------------------------"$Reset
read email_id

echo $Blue"---------------------------------------------"
echo "|       Please Enter Your Password:         |"
echo "---------------------------------------------"$Reset
read -s password  # -s option hides input for password security

echo $Blue"---------------------------------------------"
echo "|     Please Enter Your Confirm Password:   |"
echo "---------------------------------------------"$Reset
read -s confirm  # -s option hides input for password security

# Password validation
if [ "$password" == "$confirm" ]; then
    # If passwords match, display success message
    echo
    echo $Green"---------------------------------------------"
    echo "|           Your Signup Is Successful!      |"
    echo "---------------------------------------------"
    echo "| Name: $name                               |"
    echo "| Email ID: $email_id                       |"
    echo "---------------------------------------------"$Reset
else
    # If passwords do not match, display error message
    echo
    echo $Red"Passwords do not match! Please try again."$Reset
fi
