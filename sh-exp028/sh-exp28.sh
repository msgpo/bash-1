#!/bin/bash
# A shell script that request for any type of character and send back what have been writed and its quality

tput clear

the_user=`whoami` # backtrick creating the $the_user to the command whoami to get the username

echo "Enter one character"
read var

case $var in
    [a-z]) echo "You entered: '$var' which is a lower case $the_user" ;;
    [A-Z]) echo "You entered: '$var' which is an upper case $the_user" ;; # Need a fix!
    [0-9]) echo "You entered: '$var' which is a number $the_user" ;;
    ?) echo "You entered: '$var' which is a special symbol $the_user" ;;
    *) echo "You entered: '$var' which is more than one character $the_user" ;;
esac


# End of program
exit $? # exit $? to exit the program on last command
        # exit 0 to exit the program
