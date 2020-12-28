*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Search for Products
     Input Text    xpath=//input[@name='search']    ferrari
     Click Button    xpath=//div[@id='shopfront-app']//form//button[@type='submit']