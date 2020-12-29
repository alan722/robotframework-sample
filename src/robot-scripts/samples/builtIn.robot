# robot -d results/built-in builtin.robot
# http://robotframework.org/robotframework/latest/libraries/BuiltIn.html
*** Settings ***
Library    SeleniumLibrary
Documentation    Sample usage of the built-in library keywords


*** Variables ***
${GLOBAL} =    This is a global variable value
${SOME_GLOBAL_VARIABLE}

*** Test Cases ***
Declare and set Variables
    ${some_test_variable} =    Set Variable    This is only available within this test
    Set Test Variable    ${more_test_variable}    This is also only available within this test   

    # available in all tests in the current test suite
    Set Suite Variable    ${some_suite_variable}    This is available within all tests in this test suite

    # available in all tests in all test suites
    Set Global Variable    ${MORE_GLOBAL_VARIABLE}    This is available everywhere in all test suites

Logging stuff
    [Tags]    BuiltIn
    Comment    ${unset_variable}
    Comment    Just a random comment
    Comment    ${GLOBAL}
    Log    Say something
    Log Many    Something to say 1    Something to say 2    Something to say 3
    Log To Console    This can only be seen in the console not in the log file
    Log Variables    # this should log all the variables in scope
    Log    ${some_suite_variable}
    Log    ${MORE_GLOBAL_VARIABLE}

Ignore failures in this test
    [Tags]    BuiltIn
    Open Browser    http://www.takealot.com    chrome

    # notice the log will contain a summary of errors which were encountered
    Run Keyword And Continue On Failure    Wait Until Page Contains    This text does not exist
    Run Keyword And Continue On Failure    Wait Until Page Contains    More text that does not exist
    Run Keyword And Continue On Failure    Log    ${some_test_variable}

    Log    ${some_suite_variable}
    Log    ${GLOBAL}
    Log    ${MORE_GLOBAL_VARIABLE}
    Close Browser

Repeat things
    Repeat Keyword    3 Times    Say something
    Log    ${some_suite_variable}
    Log    ${GLOBAL}
    Log    ${MORE_GLOBAL_VARIABLE}
    


*** Keywords ***
Say something
    Log    This is a message

    

