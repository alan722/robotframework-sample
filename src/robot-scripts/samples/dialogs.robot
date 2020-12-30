# robot -d results/dialogs dialogs.robot
# http://robotframework.org/robotframework/latest/libraries/Dialogs.html
*** Settings ***
Documentation    Sample usage of the dialog library keywords
Library    Dialogs
Resource    ../first-script/takealot/Resources/Common.robot
Resource    ../first-script/takealot/Resources/TakealotUI.robot
Test Setup    Common.Begin Web Test
Test Teardown    Common.End Web Test


*** Variables ***
${BROWSER} =    chrome
${START_URL} =    http://www.takealot.com
${SEARCH_TERM} =    ferrari  

*** Test Cases ***
Logged out user can search for products
    [Tags]    Smoke
    ${new_browser} =    Get Selection From User    Which browser?    chrome    ie    firefox
    Set Global Variable    ${BROWSER}    ${new_browser}
    user searches for Products

Logged out user can add product to cart
    [Tags]    Smoke
    user searches for Products
    Execute Manual Step    Do something manually!    It failed!
    user selects a product from search results
    Pause Execution
    user adds the product to their cart

    

