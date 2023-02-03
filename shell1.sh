************************************************************************************ : Shell script to find first 10 biggest file in filesystem and redirect them to a file.
Written by : Shashi Kiran
Contact : 
************************************************************************************
# Identify the first 10 biggest files using du -a in /
# Using sort -n -r to sort out the output
# using the head to list top 10 files
# using >> to send the output to a file.
sudo du -a / | sort -n -r | head -n 10 >> /home/biggestfilesize.txt

