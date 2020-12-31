# robot -d results/api api.robot
# https://github.com/MarketSquare/robotframework-requests#readme
*** Settings ***
Documentation    Sample usage of the requests library keywords
Resource    ./Resources/jsonPlaceHolder.robot

*** Test Cases ***
Make a simple REST API GET call
    [Tags]    API
    ${response} =    Get Json Response
    Log    ${response}

