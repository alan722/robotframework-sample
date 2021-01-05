*** Settings ***
Documentation    Sample usage of using the if else keywords

*** Variables ***
${VALUE} =    100

*** Test Cases ***
Execute keyword when IF statement is True
    Run Keyword If    ${VALUE} > 50    Keyword 1

Execute keyword depending on IF/ELSE statement
    Run Keyword If    ${VALUE} > 200    Keyword 1
    ...    ELSE    Keyword 2

Execute keyword depending on IF/ELSE IF/ELSE statement
    Run Keyword If    ${VALUE} > 200    Keyword 1
    ...    ELSE If    ${VALUE} == 50    Keyword 2
    ...    ELSE    Keyword 3    

*** Keywords ***
Keyword 1
    Log    keyword1 executed

Keyword 2
    Log    keyword2 executed

Keyword 3
    Log    Keyword3 executed