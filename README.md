
![JFK Spoken](https://github.com/peterrenshaw/jfkspoken/blob/master/img/jfk-speaking-0.jpeg)


A tool to tweet speeches, of the late John Fitzgerald Kennedy, line by line, given from 1942 - 1963.


 
2018NOV20
* corrections to <source/1963NOV21-Houston.txt>

* ABOUT and README

* added img/<images for header on site>

* added source/*.txt

* title, isometric2, 120 char
  <http://www.network-science.de/ascii/>

* partial source for 1963NOV21 speech.

  <https://books.google.com.au/books?id=VLraAwAAQBAJ&pg=PA886&lpg=PA886&dq=%22he+sees+an+america+of+the+future...+which+will+happen+this+century+senator+daniel+webster+jfk+1963+housten&source=bl&ots=sWJjorggiS&sig=Fztc8EnTSiWx1ArQBMSNrHBEmxg&hl=en&sa=X&ved=2ahUKEwjk7arH5eHeAhXaZCsKHb7LBJsQ6AEwCXoECAoQAQ#v=onepage&q=%22he%20sees%20an%20america%20of%20the%20future...%20which%20will%20happen%20this%20century%20senator%20daniel%20webster%20jfk%201963%20housten&f=false>


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


