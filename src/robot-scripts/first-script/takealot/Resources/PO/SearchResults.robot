*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Search completed
     Wait Until Page Contains    results for "${SEARCH_TERM}"
     Sleep    5s

Click Product Link
    Click Link    xpath=//a[@href='/maisto-1-24-ferrari-laferrari-kit/PLID41482386']