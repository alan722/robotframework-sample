*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Load
    Go To    ${START_URL}

Verify Page Loaded
     Wait Until Page Contains    Takealot.com
     Sleep    5s

Verify User not Logged In
    Wait Until Page Contains    Login