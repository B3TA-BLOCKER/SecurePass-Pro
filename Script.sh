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
read Password_Lenght

for P in $(seq 1);
do
    openssl rand -base64 48 | cut -c1-$Password_Length
done

