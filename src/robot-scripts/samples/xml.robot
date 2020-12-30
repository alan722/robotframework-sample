# robot -d results/xml xml.robot
# http://robotframework.org/robotframework/latest/libraries/XML.html
*** Settings ***
Documentation    Sample usage of the xml library keywords

*** Test Cases ***
Create Some Directories
    [Tags]    OS
    OS.Create the Base directory
    OS.Create First Directory
    OS.Create Second Directory

Create Some Files
    [Tags]    OS
    OS.Create First file
    OS.Create Second File
    OS.Create Third File

Move a File
    [Tags]    OS
    OS.Move Third File from Directory 2 to Directory 1

Copy a File
    [Tags]    OS
    OS.Copy File 1 from Directory 1 to Directory 2
    

