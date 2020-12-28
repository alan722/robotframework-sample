*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Page Loaded
     Wait Until Page Contains    Maisto 1/24 Ferrari LaFerrari (Kit)
     Sleep    5s

Add to Cart
    Click Button    xpath=//div[@class='buybox-actions-module_buttons_3-iHN']/div[2]/button
    Sleep    5s