*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Search for Products
     Input Text    xpath=//input[@name='search']    ${SEARCH_TERM}
     Click Button    xpath=//div[@id='shopfront-app']//form//button[@type='submit']