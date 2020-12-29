# robot -d results tests/takealot.robot
# robot -d results -v BROWSER:chrome -v START_URL:http://takealot.com -v SEARCH_TERM:ferrari tests/takealot.robot
*** Settings ***
Library    SeleniumLibrary
Documentation    This is some basic info about the whole suite
Resource    ../Resources/TakealotUI.robot
Resource    ../Resources/Common.robot
Test Setup    Common.Begin Web Test
Test Teardown    Common.End Web Test

*** Variables ***
${BROWSER} =    chrome
${START_URL} =    http://takealot.com
${SEARCH_TERM} =    ferrari


*** Test Cases ***
User must sign in to check out
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
    Given user navigates to takealot
    And user is not logged in
    And user searches for products
    And search results contains relevant products
    And user selects a product from search results
    And correct product page loads
    And user adds the product to their cart
    And the product is present in cart
    When user attempts to checkout
    Then the user is required to sign in
   
