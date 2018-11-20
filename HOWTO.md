![JFK Spoken](https://github.com/peterrenshaw/jfkspoken/blob/master/img/jfk-speaking-0.jpeg)


A tool to tweet speeches, of the late John Fitzgerald Kennedy, line by line, from 1942 - 1963.

HOWTO


2018NOV12
* steps to build

    a) download source file to source/ dir

    b) build the config.json file

        python3 config.py -f 'dest/ona.txt' -l 'Northanger Abbey' -s config.json

       -f supply path and filename to future destination file
       -l supply the label of the file converting
       -s name of output config file to be used

    c) prepare text from source to destination

        python3 prepare.py -i source/northangerabbey.txt -o dest/ona.txt -d 

       grab the source file, parse the output and save to the destination file

       -i source text file, with editing out of gutenburg info.
       -o destination file output with shortened name. Name has to be same
          name used in -f option in the previous step.
       -d show the output

* steps to deploy

     a) require the following files to run northangerabbey.txt (as example)

        * config.json
        * dest/ona.txt 
        
     b) delete the following files:
 
        * log.txt       (output of detailed debug information of tweeting, reading etc)
        * status.json   (current status of tweeting, absolutely required for live tweets)

     c) seed the stream

        * check config settings for tweet.sh
        - is 'IS_PROD' set to TRUE for production machine, if not filepaths will fail.
        * assumption CRON is setup. (document this later)
        * ./tweet.sh
        
     d) check tweet has been delivered

        * verify tweet works on specified period.



