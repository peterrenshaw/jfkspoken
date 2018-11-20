#!/bin/sh


#=======
# name: tweet.py
# date: 2017AUG14
# prog: pr
# desc: called via crontab.cron
#       calls eventer.py which calculates
#       latest tweet to send
# usag: will show up in console via cron with the below echos
#       errors will be mailed
#=======


{ 
    # production or testing?
    TRUE=1
    FALSE=0
    IS_PROD=$FALSE

    # paths
    # depends on linux (production) or mac (development)
    LIN_USER=pi
    LIN_HOME=/home/$LI_USER/code
   
    MAC_USER=pr
    MAC_HOME=/Users/$MAC_USER/work/code

    CODE=jfkspoken
    if [ "$IS_PROD" = "$TRUE" ]; then
        CODE_PATH=$LIN_HOME/$CODE
    else
        CODE_PATH=$MAC_HOME/$CODE
    fi
    PYVER=python3

    echo "tweet.sh start"
    PATH=/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin
    $PYVER $CODE_PATH/eventer.py -s
    echo "eventer called"
    echo "tweet.sh stop"
} >&2
