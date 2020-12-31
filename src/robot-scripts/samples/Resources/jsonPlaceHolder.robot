*** Settings ***
Library    RequestsLibrary
Library    SeleniumLibrary

*** Keywords ***
Get Json Response
    Create Session    jsonPlaceHolderSession    https://jsonplaceholder.typicode.com
    ${response} =    Get Request    jsonPlaceHolderSession    posts/1
    Should Be Equal As Strings    ${response.status_code}    200
    ${json} =    Set Variable    ${response.json()}
    Log    ${json}
    Should Be Equal As Integers    ${json['userId']}    1
    [Return]    ${json}

