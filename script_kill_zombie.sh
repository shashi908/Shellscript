************************************************************************************
Script Description : Shell script functionto find and Kill all the zombie process.
Written by : Shashi Kiran
Contact : 
************************************************************************************
# Identify the zombie processes

top -b1 -n1 | grep Z 

# Find the parent of zombie process

ps -A -ostat,ppid | grep -e '[zZ]'| awk '{ print $2 }' | uniq | xargs ps -p

# Send SIGCHLD signal to the parent process. This signal tells the parent process to execute the wait() system call and clean up its zombie children

kill -s SIGCHLD ppid

# Identify if the zombie processes have been killed

top -b1 -n1 | grep Z

# Kill the parent process

kill -s ppid
