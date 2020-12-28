# robot -d results tests/takealot.robot
*** Settings ***
Documentation    This is some basic info about the whole suite
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
User must sign in to check out
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
    Open Browser    http://www.takealot.com    chrome
    Wait Until Page Contains    Takealot.com
    Sleep    5s
    Input Text    xpath=//input[@name='search']    ferrari
    Click Button    xpath=//div[@id='shopfront-app']//form//button[@type='submit']
    Wait Until Page Contains    results for "ferrari"
    Sleep    5s
    Click Link    xpath=//a[@href='/maisto-1-24-ferrari-laferrari-kit/PLID41482386']
    Wait Until Page Contains    Maisto 1/24 Ferrari LaFerrari (Kit)
    Sleep    5s
    Click Button    xpath=//div[@class='buybox-actions-module_buttons_3-iHN']/div[2]/button
    Sleep    5s
    Wait Until Element Contains    xpath=//div[@class='badge-count-wrapper']/div    1
    Click Element    xpath=//div[@class='badge-count-wrapper']/div
    Sleep    5s
    Click Link    xpath=//a[@href='https://secure.takealot.com/buy']
    Wait Until Page Contains    Login
    Close Browser

*** Keywords ***