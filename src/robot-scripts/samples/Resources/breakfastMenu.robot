*** Settings ***
Library    XML

*** Variables ***
${XML_MENU_PATH} =    data/xml/menu.xml
${EXPECTED_MENU_COUNT} =    1
${EXPECTED_FOOD_COUNT} =    5

*** Keywords ***
Should be one menu in the file
    # since we are passing the file name with no element, 
    # we get a count of how many elements are in the file
    ${menuCount} =    Get Element Count    ${XML_MENU_PATH}
    Should Be Equal As Numbers    ${menuCount}    ${EXPECTED_MENU_COUNT}

Verify Menu Name
    ${root} =    Parse Xml    ${XML_MENU_PATH}
    Should Be Equal    ${root.tag}    breakfast_menu

Verify Food Count
    # this time, we pass the element name we want to count along with the file name
    ${foodCount} =    Get Element Count    ${XML_MENU_PATH}    food
    Should Be Equal As Numbers    ${foodCount}    ${EXPECTED_FOOD_COUNT}

Verify First Food Name
    ${firstFoodName} =    Get Element    ${XML_MENU_PATH}    food[1]/name
    Should Be Equal As Strings    ${firstFoodName.text}    Belgian Waffles

Verify First Food Price
    ${firstFoodPrice} =    Get Element    ${XML_MENU_PATH}    food[1]/price
    Should Be Equal As Strings    ${firstFoodPrice.text}    R5.95

Verify First Food Calories
    ${firstFoodCalories} =    Get Element    ${XML_MENU_PATH}    food[1]/calories
    Should Be Equal As Strings    ${firstFoodCalories.text}    650

Add New Food
    ${root} =    Parse Xml    ${XML_MENU_PATH}
    Add Element    ${root}    <food></food>
    Add Element    ${root}    <name>Toasted Cheese Sandwich</name>    xpath=food[6]
    Add Element    ${root}    <price>R2.95</price>    xpath=food[6]
    Add Element    ${root}    <description>Yummymelted cheese on grilled bread slices</description>    xpath=food[6]
    Add Element    ${root}    <calories>300</calories>    xpath=food[6]
    Save Xml    ${root}    ${XML_MENU_PATH}
    Element Should Exist    ${XML_MENU_PATH}    food[6]