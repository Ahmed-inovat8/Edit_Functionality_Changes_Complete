*** Settings ***
Library           SeleniumLibrary
Resource          locators.resource
Resource          low_level_keywords.resource
Resource          medium_level_keywords.resource
Resource          high_level_keywords.resource

*** Keywords ***

Login to Sora Fuel while adding Bezzomate
    [Documentation]    Login to Sora Fuel while adding Bezzomate
    ...
    ...    == Description: ==
    ...    Login to Sora Fuel while adding Bezzomate
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    Open Browser    https://sorafuel.inovat8.com/    chrome    options=add_argument("--load-extension=${EXTENSION_PATH_NEW}")
    Maximize Browser Window
    Click On Composed Locator    ${login_credenetials}    Username
    Send Keys to Composed Locator    ${login_credenetials}    Username    Ahmed
    Click On Composed Locator    ${login_credenetials}    Password
    Send Keys to Composed Locator    ${login_credenetials}    Password    Ahmed@123
    Capture Page Screenshot
    Click On Locator    ${signin_button}
    Wait For Locator    ${new_project_button}
    Capture Page Screenshot

Access Bezzomate
    [Documentation]    Access Bezzomate
    ...
    ...    == Description: ==
    ...    Access Bezzomate
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Press Keys    None    ALT+B
    Sleep    3s
    Capture Page Screenshot
    
Unaccess Bezzomate
    [Documentation]    Access/Unacess Bezzomate
    ...
    ...    == Description: ==
    ...    Access/Unacess Bezzomate
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Press Keys    None    ALT+B
    Sleep    3s
    Capture Page Screenshot
    
Navigate to the Category "${Category}" from Bezzomate
    [Documentation]    Navigate to the Category from Bezzomate
    ...
    ...    == Description: ==
    ...    Navigate to the Category from Bezzomate
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Wait For Composed Locator    ${bezzomate_category}    ${Category}
    Click On Composed Locator    ${bezzomate_category}    ${Category}
    Capture Page Screenshot
    
    
Verify that the newly created Project by Owner "${Owner}" has only one entry with "${number}" scrolls
    [Documentation]    Verify that the newly created Project by Owner has only one entry
    ...
    ...    == Description: ==
    ...    Verify that the newly created Project by Owner has only one entry
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Wait For Locator    ${horizontal_scroller}
    Scroll Element Into View    ${horizontal_scroller}
    Click On Locator    ${horizontal_scroller}
    FOR    ${index}    IN RANGE    ${number}
        Press Keys    NONE    ARROW_RIGHT
        Sleep    0.5
    END
    ${locator} =   Composed Locator    ${bezzomate_owner}    ${Owner}
    ${Elements} =   Get WebElements    ${locator}
    ${numbers} =   Get Length    ${Elements}
    Convert To Integer    ${numbers}
    Run Keyword If    ${numbers} == 2    Wait For Locator    ${locator}
    Capture Page Screenshot

  
Navigate to the Category "${Master_Data}" in State
    [Documentation]    Navigate to the Category in State
    ...
    ...    == Description: ==
    ...    Navigate to the Category in State
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Refresh Bezzomate
    Wait For Locator    ${bezzomate_search_bar}
    Scroll Element Into View    ${bezzomate_search_bar}
    Double Click Element    ${bezzomate_search_bar}
    Click On Locator    ${bezzomate_search_bar}
    Sleep    2
    Press Keys    NONE    CTRL+A
    Press Keys    NONE    BACKSPACE
    Send Keys To Locator    ${bezzomate_search_bar}    ${Master_Data}
    Click On Composed Locator    ${bezzomate_search_result}    ${Master_Data}
    Sleep    2
    Capture Page Screenshot

  


  
Verify that the new MEA for Category "${Master_Data}" has only one instance in the database
    [Documentation]    Verify that the new MEA for Category has only one instance in the database
    ...
    ...    == Description: ==
    ...    Verify that the new MEA for Category has only one instance in the database
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Refresh Bezzomate
    Wait For Locator    ${bezzomate_search_bar}
    Scroll Element Into View    ${bezzomate_search_bar}
    Double Click Element    ${bezzomate_search_bar}
    Click On Locator    ${bezzomate_search_bar}
    Sleep    2
    Press Keys    NONE    CTRL+A
    Press Keys    NONE    BACKSPACE
    Send Keys To Locator    ${bezzomate_search_bar}    ${Master_Data}
    Click On Composed Locator    ${bezzomate_search_result}    ${Master_Data}
    Wait For Locator    ${bezzomate_one_instance}
    Scroll Element Into View    ${bezzomate_one_instance}
    Double Click Element    ${bezzomate_one_instance}
    Capture Page Screenshot

  
Verify that the new Experiment for Category "${MasterData}" has the ID "${E_ID}" in the database
    [Documentation]    Verify that the new Experiment for Project has the ID in the database
    ...
    ...    == Description: ==
    ...    Verify that the new Experiment for Project has the ID in the database
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Refresh Bezzomate
    Wait For Locator    ${bezzomate_search_bar}
    Scroll Element Into View    ${bezzomate_search_bar}
    Double Click Element    ${bezzomate_search_bar}
    Click On Locator    ${bezzomate_search_bar}
    Sleep    2
    Press Keys    NONE    CTRL+A
    Press Keys    NONE    BACKSPACE
    Send Keys To Locator    ${bezzomate_search_bar}    ${Master_Data}
    Click On Composed Locator    ${bezzomate_search_result}    ${Master_Data}
    Wait For Locator    ${instance_bezzomate}
    Click On Locator    ${instance_bezzomate}
    Scroll To End Of Page
    Wait For Locator    ${header_actions}
    Click On Locator    ${header_actions}
    ${locator} =   Composed Locator    ${experiment_id}    ${E_ID}
    Wait For Locator    ${locator}
    Double Click Element    ${locator}
    Capture Page Screenshot





  
Verify that the new MEA for Category "${Master_Data}" has the ID "${ID}" in the database
    [Documentation]    Verify that the new MEA for Category has the ID in the database
    ...
    ...    == Description: ==
    ...    Verify that the new MEA for Category has the ID in the database
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Refresh Bezzomate
    Wait For Locator    ${bezzomate_search_bar}
    Scroll Element Into View    ${bezzomate_search_bar}
    Double Click Element    ${bezzomate_search_bar}
    Click On Locator    ${bezzomate_search_bar}
    Sleep    2
    Press Keys    NONE    CTRL+A
    Press Keys    NONE    BACKSPACE
    Send Keys To Locator    ${bezzomate_search_bar}    ${Master_Data}
    Click On Composed Locator    ${bezzomate_search_result}    ${Master_Data}
    Wait For Locator    ${instance_bezzomate}
    Click On Locator    ${instance_bezzomate}
    Scroll To End Of Page
    Wait For Locator    ${header_actions}
    Click On Locator    ${header_actions}
    FOR    ${index}    IN RANGE    33
        Press Keys    NONE    ARROW_RIGHT
        Sleep    0.05
    END
    ${locator} =   Composed Locator    ${master_data_id}    ${ID}
    Wait For Locator    ${locator}
    Double Click Element    ${locator}
    Capture Page Screenshot

  
Verify that the new MEA for Test "${Master_Data}" has Unique ID in the database
    [Documentation]    Verify that the new MEA for Test has Unique ID in the database
    ...
    ...    == Description: ==
    ...    Verify that the new MEA for Test has Unique ID in the database
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Refresh Bezzomate
    Wait For Locator    ${bezzomate_search_bar}
    Scroll Element Into View    ${bezzomate_search_bar}
    Double Click Element    ${bezzomate_search_bar}
    Click On Locator    ${bezzomate_search_bar}
    Sleep    2
    Press Keys    NONE    CTRL+A
    Press Keys    NONE    BACKSPACE
    Send Keys To Locator    ${bezzomate_search_bar}    ${Master_Data}
    Click On Composed Locator    ${bezzomate_search_result}    ${Master_Data}
    Wait For Locator    ${instance_bezzomate}
    Click On Locator    ${instance_bezzomate}
    Scroll To End Of Page
    Wait For Locator    ${header_actions}
    Click On Locator    ${header_actions}
    FOR    ${index}    IN RANGE    133
        Press Keys    NONE    ARROW_RIGHT
        Sleep    0.05
    END
    Sleep    1
    Capture Page Screenshot

  
Verify that the new MEA for Project "${Master_Data}" has the ID "${ID}" in the database
    [Documentation]    Verify that the new MEA for Test has the ID in the database
    ...
    ...    == Description: ==
    ...    Verify that the new MEA for Test has the ID in the database
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Refresh Bezzomate
    Wait For Locator    ${bezzomate_search_bar}
    Scroll Element Into View    ${bezzomate_search_bar}
    Double Click Element    ${bezzomate_search_bar}
    Click On Locator    ${bezzomate_search_bar}
    Sleep    2
    Press Keys    NONE    CTRL+A
    Press Keys    NONE    BACKSPACE
    Send Keys To Locator    ${bezzomate_search_bar}    ${Master_Data}
    Click On Composed Locator    ${bezzomate_search_result}    ${Master_Data}
    Wait For Locator    ${instance_bezzomate}
    Click On Locator    ${instance_bezzomate}
    Scroll To End Of Page
    Wait For Locator    ${header_actions}
    Click On Locator    ${header_actions}
    FOR    ${index}    IN RANGE    13
        Press Keys    NONE    ARROW_RIGHT
        Sleep    0.05
    END
    ${locator} =   Composed Locator    ${master_data_id}    ${ID}
    Wait For Locator    ${locator}
    Double Click Element    ${locator}
    Capture Page Screenshot

Verify that the new MEA for Anolyte/Catholyte "${Master_Data}" has the ID "${ID}" in the database
    [Documentation]    Verify that the new MEA for Anolyte/Catholyte has the ID in the database
    ...
    ...    == Description: ==
    ...    Verify that the new MEA for Anolyte/Catholyte has the ID in the database
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Refresh Bezzomate
    Wait For Locator    ${bezzomate_search_bar}
    Scroll Element Into View    ${bezzomate_search_bar}
    Double Click Element    ${bezzomate_search_bar}
    Click On Locator    ${bezzomate_search_bar}
    Sleep    2
    Press Keys    NONE    CTRL+A
    Press Keys    NONE    BACKSPACE
    Send Keys To Locator    ${bezzomate_search_bar}    ${Master_Data}
    Click On Composed Locator    ${bezzomate_search_result}    ${Master_Data}
    Wait For Locator    ${instance_bezzomate}
    Click On Locator    ${instance_bezzomate}
    Scroll To End Of Page
    Wait For Locator    ${header_actions}
    Click On Locator    ${header_actions}
    ${locator} =   Composed Locator    ${master_data_id}    ${ID}
    Wait For Locator    ${locator}
    Double Click Element    ${locator}
    Capture Page Screenshot
    
Verify that the new MEA for Component "${Master_Data}" has the Chemicals "${C1}" "${C2}" "${C3}" in the database
    [Documentation]    Verify that the new MEA for Component has the Chemicals in the database
    ...
    ...    == Description: ==
    ...    Verify that the new MEA for Component has the Chemicals in the database
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Refresh Bezzomate
    Wait For Locator    ${bezzomate_search_bar}
    Scroll Element Into View    ${bezzomate_search_bar}
    Double Click Element    ${bezzomate_search_bar}
    Click On Locator    ${bezzomate_search_bar}
    Sleep    2
    Press Keys    NONE    CTRL+A
    Press Keys    NONE    BACKSPACE
    Send Keys To Locator    ${bezzomate_search_bar}    ${Master_Data}
    Click On Composed Locator    ${bezzomate_search_result}    ${Master_Data}
    Wait For Locator    ${instance_bezzomate}
    Click On Locator    ${instance_bezzomate}
    Scroll To End Of Page
    Wait For Locator    ${header_actions}
    Click On Locator    ${header_actions}
    ${locator1} =   Composed Locator    ${master_data_id}    ${C1}
    Wait For Locator    ${locator1}
    Double Click Element    ${locator1}
    ${locator2} =   Composed Locator    ${master_data_id}    ${C2}
    Wait For Locator    ${locator2}
    Double Click Element    ${locator2}
    ${locator3} =   Composed Locator    ${master_data_id}    ${C3}
    Wait For Locator    ${locator3}
    Double Click Element    ${locator3}
    Capture Page Screenshot
    


Verify that the new MEA for Category Catalyst Layer "${Master_Data}" has the ID "${ID}" in the database
    [Documentation]    Verify that the new MEA for Category Catalyst Layer has the ID in the database
    ...
    ...    == Description: ==
    ...    Verify that the new MEA for Category Catalyst Layer has the ID in the database
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Refresh Bezzomate
    Wait For Locator    ${bezzomate_search_bar}
    Scroll Element Into View    ${bezzomate_search_bar}
    Double Click Element    ${bezzomate_search_bar}
    Click On Locator    ${bezzomate_search_bar}
    Sleep    2
    Press Keys    NONE    CTRL+A
    Press Keys    NONE    BACKSPACE
    Send Keys To Locator    ${bezzomate_search_bar}    ${Master_Data}
    Click On Composed Locator    ${bezzomate_search_result}    ${Master_Data}
    Wait For Locator    ${instance_bezzomate}
    Click On Locator    ${instance_bezzomate}
    Scroll To End Of Page
    Wait For Locator    ${header_actions}
    Click On Locator    ${header_actions}
    ${locator} =   Composed Locator    ${master_data_id}    ${ID}
    Wait For Locator    ${locator}
    Double Click Element    ${locator}
    Capture Page Screenshot
    
  
Verify that the new MEA for Category Flow Field "${Master_Data}" has the ID "${ID}" in the database
    [Documentation]    Verify that the new MEA for Category Flow Field has the ID in the database
    ...
    ...    == Description: ==
    ...    Verify that the new MEA for Category Flow Field has the ID in the database
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Refresh Bezzomate
    Wait For Locator    ${bezzomate_search_bar}
    Scroll Element Into View    ${bezzomate_search_bar}
    Double Click Element    ${bezzomate_search_bar}
    Click On Locator    ${bezzomate_search_bar}
    Sleep    2
    Press Keys    NONE    CTRL+A
    Press Keys    NONE    BACKSPACE
    Send Keys To Locator    ${bezzomate_search_bar}    ${Master_Data}
    Click On Composed Locator    ${bezzomate_search_result}    ${Master_Data}
    Wait For Locator    ${instance_bezzomate}
    Click On Locator    ${instance_bezzomate}
    Scroll To End Of Page
    Wait For Locator    ${header_actions}
    Click On Locator    ${header_actions}
    FOR    ${index}    IN RANGE    9
        Press Keys    NONE    ARROW_RIGHT
        Sleep    0.05
    END
    ${locator} =   Composed Locator    ${master_data_id}    ${ID}
    Wait For Locator    ${locator}
    Double Click Element    ${locator}
    Capture Page Screenshot





Verify 1 to Many Association between Anolyte/Catholyte with "${number}" Components
    [Documentation]    Verify 1 to Many Association between Anolyte/Catholyte with Components
    ...
    ...    == Description: ==
    ...    Verify 1 to Many Association between Anolyte/Catholyte with Components
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Wait For Locator    ${bezzomate_search_bar}
    Scroll Element Into View    ${bezzomate_search_bar}
    Double Click Element    ${bezzomate_search_bar}
    Click On Locator    ${bezzomate_search_bar}
    Sleep    2
    Press Keys    NONE    CTRL+A
    Press Keys    NONE    BACKSPACE
    Send Keys To Locator    ${bezzomate_search_bar}    Component
    Click On Composed Locator    ${bezzomate_search_result}    Component
    ${locator} =   Composed Locator    ${bezzomate_instance_composed}    ${number}
    Wait For Locator    ${locator}
    Scroll Element Into View    ${locator}
    Double Click Element    ${locator}
    Capture Page Screenshot
    



  
Refresh Bezzomate
    [Documentation]    Refresh Bezzomate
    ...
    ...    == Description: ==
    ...    Refresh Bezzomate
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Wait For Locator    ${bezzomate_refresh}
    Scroll Element Into View    ${bezzomate_refresh} 
    Click On Locator    ${bezzomate_refresh}
    Capture Page Screenshot
    



Verify value "${value}" on position "${position}" for Step "${Step}" via scrolls "${number}"
    [Documentation]    Verify boolean value is present on position for Step via scrolls
    ...
    ...    == Description: ==
    ...    Verify boolean value is present on position for Step via scrolls
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar
    
    Wait For Locator    ${bezzomate_table_indexes}
    Scroll Element Into View    ${bezzomate_table_indexes}
    Click On Locator    ${bezzomate_table_indexes}
    [Tags]    DONE
    FOR    ${index}    IN RANGE    ${number}
        Press Keys    NONE    ARROW_RIGHT
        Sleep    0.05
        
    END
    Wait For Composed Locator made with two inputs    ${test_step_index}    ${position}    ${Step}
    Wait For Composed Locator made with two inputs    ${test_value_index}    ${position}    ${value}
    Capture Page Screenshot


  
Verify that DC Power Supply Readings are "${Value}"
    [Documentation]    Verify that the new MEA for Category has the ID in the database
    ...
    ...    == Description: ==
    ...    Verify that the new MEA for Category has the ID in the database
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Wait For Locator    ${bezzomate_search_bar}
    Scroll Element Into View    ${bezzomate_search_bar}
    Double Click Element    ${bezzomate_search_bar}
    Click On Locator    ${bezzomate_search_bar}
    Sleep    2
    Press Keys    NONE    CTRL+A
    Press Keys    NONE    BACKSPACE
    Send Keys To Locator    ${bezzomate_search_bar}    DCPowerSupplyReading
    Click On Composed Locator    ${bezzomate_search_result}    DCPowerSupplyReading
    Wait For Locator    ${instance_bezzomate}
    Click On Locator    ${instance_bezzomate}
    Wait For Locator    ${header_actions}
    ${locator} =   Composed Locator    ${dc_readings}    ${Value}
    Wait For Locator    ${locator}
    Scroll Element Into View    ${locator}
    Double Click Element    ${locator}    
    Capture Page Screenshot

  