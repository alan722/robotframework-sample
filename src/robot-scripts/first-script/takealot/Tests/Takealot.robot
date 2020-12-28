# robot -d results tests/takealot.robot
*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/TakealotUI.robot
Resource    ../Resources/Common.robot

*** Variables ***

*** Test Cases ***
User must sign in to check out
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
    Common.Begin Web Test
    TakealotUI.Search for Products
    TakealotUI.Select Product from Search Results
    TakealotUI.Add Product to Cart
    TakealotUI.Begin Checkout
    Common.End Web Test
   
