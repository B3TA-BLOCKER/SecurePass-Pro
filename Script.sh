#!/bin/bash

clear # clear screen command 

#  Password Generator ASCII Art
echo -e "\n\n\n\n"
echo ""
echo -e "\t\t\t\t\t    #####                                     ######                             ######                 "
echo -e "\t\t\t\t\t   #     # ######  ####  #    # #####  ###### #     #   ##    ####   ####        #     # #####   ####   "
echo -e "\t\t\t\t\t   #       #      #    # #    # #    # #      #     #  #  #  #      #            #     # #    # #    #  "
echo -e "\t\t\t\t\t    #####  #####  #      #    # #    # #####  ######  #    #  ####   ####  ##### ######  #    # #    #  "
echo -e "\t\t\t\t\t         # #      #      #    # #####  #      #       ######      #      #       #       #####  #    #  "
echo -e "\t\t\t\t\t   #     # #      #    # #    # #   #  #      #       #    # #    # #    #       #       #   #  #    #  "
echo -e "\t\t\t\t\t    #####  ######  ####   ####  #    # ###### #       #    #  ####   ####        #       #    #  ####  "


# User is going to enter the length of the password.
echo -n -e "\n\n\n\nPlease Enter the length of the password \n-> "
read Password_Length

# The user will be given 5 different option of passwords to select from. 
for P in $(seq 1 5);
do
    echo -n "$P.} "
    openssl rand -base64 48 | cut -c1-$Password_Length # base64 has a limited character set.{Max limit is 48} and here all 48 characters are used.
    # The encryption Algorithm used is {base64} 
    # Openssl will generate random base64 characters 
    # cut is used to extract sections from each line of input or file.
    # -c1-$Password_Length 
        # It takes the output from the previous command (openssl rand -base64 48)
        # and cuts it from the 1st character to the length specified by the variable $Password_Length.
done

