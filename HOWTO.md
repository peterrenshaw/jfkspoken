![JFK Spoken](https://github.com/peterrenshaw/jfkspoken/blob/master/img/jfk-speaking-0.jpeg)


A tool to tweet speeches, of the late John Fitzgerald Kennedy, line by line, from 1942 - 1963.

HOWTO


2018NOV12
* steps to build

    a) download source file to source/ directory.


    b) prepare text from source to destination:

       WARNING: The filenames are used as an example only. Supply your own.

        python3 prepare.py -i source/source-filename.txt -o dest/oDest-filename.txt -d 

       grab the source file, parse the output and save to the destination file

       -i source text file, with editing out of gutenburg info.
       -o destination file output with shortened name. Name has to be same
          name used in -f option in the previous step.
       -d show the output

    c) build the config.json file:

       WARNING: The filenames and descriptions are used as an example only. Supply your own.

       python3 config.py -f 'dest/oDest-filename.txt' -l 'Suitable description of config file' -s config.json

       -f supply path and filename to future destination file
       -l supply the label of the file converting (displayed in log.txt and status.json)
       -s name of output config file to be used


* steps to deploy

     a) require the following files to run northangerabbey.txt (as example)

        * config.json
        * dest/oDest-filename.txt 
        
     b) delete the following files:
 
        * log.txt       (output of detailed debug information of tweeting, reading etc)
        * status.json   (current status of tweeting, absolutely required for live tweets)

     c) setup cron
        * (document this)

     d) seed the stream
        * assumption CRON is setup. 

        * check config settings for tweet.sh
        - IF PRODUCTION: is 'IS_PROD' set to TRUE for production machine, if not filepaths will fail.
        - IF TESTING: is 'IS_PROD' set to FALSE for testing machine,

        * ./tweet.sh
        
     d) check tweet has been delivered

        * verify tweet works on specified period.



