*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Product Added
    Wait Until Element Contains    xpath=//div[@class='badge-count-wrapper']/div    1

Proceed to Checkout
    Click Element    xpath=//div[@class='badge-count-wrapper']/div
    Sleep    5s
    Click Link    xpath=//a[@href='https://secure.takealot.com/buy']