#!/bin/bash
mkdir ~/TrueLayer

#Create the file
touch ~/TrueLayer/TLTest.txt

#Timepstamp
echo "Time" >> ~/TrueLayer/TLTest.txt
echo "$(date)." >> ~/TrueLayer/TLTest.txt
echo "" >> ~/TrueLayer/TLTest.txt

#List files and folders in the TureLayer directory
echo "Files and folders" >> ~/TrueLayer/TLTest.txt
ls -a | sort >> ~/TrueLayer/TLTest.txt
echo "" >> ~/TrueLayer/TLTest.txt

#External ip to ~/TrueLayer/TLTest.txt
echo "External IP" >> ~/TrueLayer/TLTest.txt
dig @ns1-1.akamaitech.net ANY whoami.akamai.net +short >> ~/TrueLayer/TLTest.txt
echo "" >> ~/TrueLayer/TLTest.txt

#Total ram to ~/TrueLayer/TLTest.txt
echo "Available RAM" >> ~/TrueLayer/TLTest.txt
top -l 1 -s 0 | grep PhysMem >> ~/TrueLayer/TLTest.txt
echo "" >> ~/TrueLayer/TLTest.txt

#Get PID and username
echo "PID" >> ~/TrueLayer/TLTest.txt
echo $$ >> ~/TrueLayer/TLTest.txt
printf '%s\n' "${SUDO_USER:-$USER}" >> ~/TrueLayer/TLTest.txt
echo "" >> ~/TrueLayer/TLTest.txt
