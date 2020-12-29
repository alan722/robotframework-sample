*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TOPNAV_SEARCH_BAR} =    xpath=//input[@name='search']
${TOPNAV_SEARCH_BUTTON} =    xpath=//div[@id='shopfront-app']//form//button[@type='submit']

*** Keywords ***
Search for Products
     Input Text    ${TOPNAV_SEARCH_BAR}    ${SEARCH_TERM}
     Click Button    ${TOPNAV_SEARCH_BUTTON}