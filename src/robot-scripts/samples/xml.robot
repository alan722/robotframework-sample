# robot -d results/xml xml.robot
# http://robotframework.org/robotframework/latest/libraries/XML.html
*** Settings ***
Documentation    Sample usage of the xml library keywords
Resource    ./Resources/breakfastMenu.robot

*** Test Cases ***
Verify Menu Count
    [Tags]    XML
    breakfastMenu.Should be one menu in the file

Verify Root
    [Tags]    XML
    breakfastMenu.Verify Menu Name

Verify Food Count
    [Tags]    XML
    breakfastMenu.Verify Food Count

Verify First Food
    [Tags]    XML
    breakfastMenu.Verify First Food Name
    breakfastMenu.Verify First Food Price
    breakfastMenu.Verify First Food Calories

Add a Food
    [Tags]    XML
    breakfastMenu.Add New Food

