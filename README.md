# So I couldn't print the other day at work

- v1 March 2017

I have a mac and we have a Kyocera TASKalfa 3550ci with job accounting setup at work for network printing. This might help you randomly one day.

Notes:
- I was previously able to add the job accounting code via presets in the normal printing window. But something has changed recently (OS or the kyocera driver) and I cant do that anymore :(
- Made this quick guide to help the other guys in the office. Also I was struggling to come to terms with the fact that as a developer I couldn't print a simple document.

## Steps

- Install the Kyocera driver [link](http://usa.kyoceradocumentsolutions.com/americas/jsp/Kyocera/resource_details.jsp?pid=28527&rid=29638) and install
- Clone/download this repo to a folder ``` git clone https://github.com/runningdeveloper/kyocera_print.git ```
- In the terminal cd into the folder eg ``` cd afolder/kyocera_print ```
- Now we want to wipe all the printers and start clean, run the first script ``` sudo sh reset.sh ```
- Now go to the CUPS web interface in a browser [http://localhost:631/admin](http://localhost:631/admin), you may need to put in your login credentials that you use when you open you mac
- Now add a printer, our printer has ipp enabled so go for ipp and use the following address (192.168.0.200 is our printers' IP address) ``` ipp://192.168.0.200:631/printers/lp1 ``` and pick the correct driver. Name the printer kyocera for it to work with the next script
- Now we run the second script to add our job accounting code to the settings. I'm doing this because the default setting doesn't have provision for a custom code. Run the script with your code afterwards like this: ``` sudo sh add_code.sh 1234```
- Now got to [http://localhost:631/printers/kyocera](http://localhost:631/printers/kyocera) and click on 'Set Default Options' from the dropdown
- I want private printing so I go to 'Job Settings' and choose 'Private Print' then 'Job Accounting' tab you will see in the dropdown your code will be there, choose it and click 'Set Default Options'

You can now print.

__Caveat__ I couldn't get the private print code to work a 100%, i.e. when you open up you folder on the printer, use the default code 0000 to print the document. Not perfect but at least you can print.

### PS I'm done with printers, 2017 why do we still need to print stuff on paper
