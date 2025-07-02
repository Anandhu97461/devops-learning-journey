We have a few different applications running on this system. The list of applications is stored in the /home/bob/apps.txt file. Each application has it's logs stored in the /var/log/apps directory under a file with its name. Check it out!


A simple version of the script has been developed for you named /home/bob/count-requests.sh, which inspects the log file of an application and prints the number of GET, POST, and DELETE requests. Update the script to use a for loop to read the list of applications from the apps.txt file, and count the number of requests for each application, and display it in a tabular format like this.

Log name         GET         POST          DELETE
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  - 

finance            10           20            50  

marketing          20           10            30 