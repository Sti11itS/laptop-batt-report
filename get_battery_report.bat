::=================================================
:: Simple Windows batch script that generates 
:: a report on the battery health on per day basis
::=================================================
@ECHO off
:: Check for Reports folder in current directory
:: If not exists, then create Report folder
IF NOT EXIST .\Reports\ (
	mkdir .\Reports
) 
:: Set variables
SET YYYYMMDD=%DATE:~6,4%%DATE:~3,2%%DATE:~0,2%
SET HHMM=%TIME:~0,2%%TIME:~3,2%
:: Generate Reports
POWERCFG /BATTERYREPORT /OUTPUT ".\Reports\BR_%YYYYMMDD%.html"
ECHO Latest Report at %YYYYMMDD% %HHMM%HR > .\Reports\output.txt
:: Echo date and time of report
ECHO Latest Report at %YYYYMMDD% %HHMM%HR
PAUSE 
