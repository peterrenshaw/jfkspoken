     
![JFK Spoken](https://github.com/peterrenshaw/jfkspoken/blob/master/img/jfk-speaking-0.jpeg)


A tool to tweet speeches, of the late John Fitzgerald Kennedy, line by line, from 1942 - 1963.



* Filetree
    ABOUT
    BUGS
    TODO
    # ---- TWEETER ----
    tweet.sh         # instructions (eventer.py) called from cron
    eventer.py       # send a sentence to twitter
    crontab.cron     # crontab to run/call tweet.sh
    
  
    # ---- SHREDDER ----
    shred.sh         # shred a file into sentences
    qa.py            # main call program

    # ---- TOOLS ----
    config.py        # options setting for QA
    parse.py         # text parsing tools
    punctuation.py   # punctuation parsing tools
    token.py         # tokenising tools

    # ---- TWEEPY TOOLS ---- 
    auth.py          # tweepy authourising
    secrets.py       # **** DO NOT SHOW ****

    # ---- DIRECTORIES ----
    source/          # source file directory
    dest/            # destination directory


2017AUG17 a simple tool to shred files to make them suitable for tweeting on twitter.


