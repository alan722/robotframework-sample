# robot -d results/looping looping.robot
*** Settings ***
Documentation    Sample usage of looping

Library    String

*** Test Cases ***
For Loop with Upper Bound Range
    [Documentation]    This gives us a 0 based range
    FOR    ${i}    IN RANGE    5
        Do Something    ${i}
        ${randomString} =    Generate Random String    ${i}
        Log    ${randomString}    
    END

For Loop with Start and Finish Range
    [Documentation]    No longer a 0 based range because the start is provided
    FOR    ${i}    IN RANGE    1    4
        Do Something    ${i}
        ${randomString} =    Generate Random String    ${i}
        Log    ${randomString}
    END

For Loop with Start, Finish, and Step Range
    [Documentation]    The counter will increment by 2 each time
    FOR    ${i}    IN RANGE    1    10    2
        Do Something    ${i}
        ${randomString} =    Generate Random String    ${i}
        Log    ${randomString}
    END

For Loop with List
    @{items} =    Create List    Item 1    Item 2    Item 3

    FOR    ${i}    IN    @{items}
        Log    ${i}
    END

Exit a For Loop
    @{items} =    Create List    Item 1    Item 2    Item 3

    FOR    ${i}    IN    @{items}
        Log    ${i}
        Run Keyword If    "${i}" == "Item 2"    Exit For Loop
        Log    This will not print
    END

    Log    This will print

Repeat a keyword many times
    Repeat Keyword    5    A Repeatable Keyword
    Repeat Keyword    2 times    A Repeatable Keyword
    Repeat Keyword    3s    A Repeatable Keyword

*** Keywords ***
Do Something
    [Arguments]    ${index}
    Log    I was passed a value of ${index}

A Repeatable Keyword
    Log    I am being repeated
