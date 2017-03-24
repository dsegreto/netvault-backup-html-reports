# netvault-backup-html-reports
Set Netvault Backup's reports to send in HTML. It even works with GMail's css restrictions!

Notable Quest knowledge base article: https://support.quest.com/netvault-backup/kb/212830.<br>
This will show you how to change the script to send HTML emails. I have a modified replacement sysmail.sh included in this repo.<br>
Windows users may want to look into this article for fixing the bat file.<br>

Here are the instructions for both Netvault 11.2 and Netvault 11.3.
As far as I have seen, restarting the Netvault Server service is not necessary.<br>
Every change I have made during test has applied at the next report, or sometimes within a report if one was running at the time.

<b>Important Notes</b>
* In Netvault 11.2, this config change will break "Run & View". That's probably okay, though, since 11.2 has a flaw that causes reports to take hours to run.<br>
* Netvault 11.3's configs work for both "Run & View" and "Run & Notify".<br>
    However, it did slightly change how the Run & Notify reports look.<br>
    All special buttons still function (i.e. save as PDF)<br>

<b>Netvault 11.2:</b><br>
* Start as a priviledged user on the Netvault Backup machine.<br>
   My instructions are for Linux, but doing this in Windows should not be any different.
* Backup or make a copy of these folders for safety:<br>
   %NVHOME%/scripts/global<br>
   %NVHOME%/reports/footers<br>
   %NVHOME%/reports/headers<br>
   %NVHOME%/reports/jobfooters<br>
   %NVHOME%/reports/jobheaders<br>
* Drop files in this repo to their associated folders.<br>
   The root of this repo acts like %NVHOME%/
   The directory structures are in place.
* The HTMLDave folders will need to be created.
* Make sure that %NVHOME%/scripts/global/sysmail.sh is executable (chmod +x).
* Go to your Netvault Server's Web UI<br>
   Change Settings --> Server Settings --> Reporting<br>
   Under "HTML Text Output", look for "Default Job Header/Footer Location"<br>
   Set it to: HTMLDave
* Test it with a new report.

<b>Netvault 11.3:</b><br>
* Start as a priviledged user on the Netvault Backup machine.<br>
   My instructions are for Linux, but doing this in Windows should not be any different.
* Backup or make a copy of these folders for safety:<br>
   %NVHOME%/scripts/global<br>
   %NVHOME%/reports/footers<br>
   %NVHOME%/reports/headers<br>
   %NVHOME%/reports/jobfooters<br>
   %NVHOME%/reports/jobheaders<br>
* Drop files in this repo to their associated folders.<br>
   The root of this repo acts like %NVHOME%/
   The directory structures are in place.
* The HTMLDave_113 folders will need to be created.
* Go to your Netvault Server's Web UI<br>
   Change Settings --> Server Settings --> Reporting<br>
   Under "HTML Text Output", look for "Default Job Header/Footer Location"<br>
   Set it to: HTMLDave_113
* Test it with a new report.
