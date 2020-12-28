*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Load
    Go To    http://www.takealot.com

Verify Page Loaded
     Wait Until Page Contains    Takealot.com
     Sleep    5s