*** Settings ***
Library           SeleniumLibrary
Resource          locators.resource
Resource          low_level_keywords.resource
Resource          medium_level_keywords.resource

*** Keywords ***

Enter all the credentials in New Project Page "${Name}", "${Details}", "${SDate}", "${Owner}" 
    [Documentation]    Enter all the credentials in New Project Page 
    ...
    ...    == Description: ==
    ...    Enter all the credentials in New Project Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    Click On Locator    ${new_project_name}
    Write On Locator    ${new_project_name}    ${Name}
    Click On Locator    ${new_project_detail}
    Capture Page Screenshot
    Write On Locator    ${new_project_detail}    ${Details}
    Click On Locator    ${new_project_start_date}
    Mouse Over    ${new_project_start_date}
    Sleep    0.5
    Press Keys    NONE    CTRL+A
    Sleep    0.5
    Press Keys    NONE    BACKSPACE
    Write On Locator    ${new_project_start_date}    ${SDate}
    Click On Locator    ${new_project_owner_dropdown}
    Send Keys To Locator    ${new_project_owner_input}    ${Owner}
    Press Key    ${new_project_owner_input}    \\13
    Capture Page Screenshot


Enter all the following credentials in New Project Page "${Name}", "${Details}", "${Owner}" 
    [Documentation]    Enter all the credentials in New Project Page 
    ...
    ...    == Description: ==
    ...    Enter all the credentials in New Project Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    Click On Locator    ${new_project_name}
    Write On Locator    ${new_project_name}    ${Name}
    Click On Locator    ${new_project_detail}
    Capture Page Screenshot
    Write On Locator    ${new_project_detail}    ${Details}
    Click On Locator    ${new_project_owner_dropdown}
    Send Keys To Locator    ${new_project_owner_input}    ${Owner}
    Press Key    ${new_project_owner_input}    \\13
    Capture Page Screenshot




Create Multiple Incremental Experiments "${Experiment}" "${Value}"
    [Documentation]    Create multiple new incremental experiments
    ...
    ...    == Description: ==
    ...    Create multiple new incremental experiments
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar


    FOR    ${index}    IN RANGE    ${Experiment}
        ${current_value}=    Evaluate    ${Value} + ${index}
        Create New Experiment "${current_value}" from Select Experiment Page
    END


Select File with "${number}" iterations from Google Drive for DC Page
    [Documentation]    Select File with a number of iterations from Google Drive for DC Page
    ...
    ...    == Description: ==
    ...    Select File with a number of iterations from Google Drive for DC Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    Convert To Integer    ${number}
    Sleep    2
    FOR    ${index}    IN RANGE    ${number}
        Press Keys    NONE    ARROW_RIGHT
        Sleep    1
    END
    Sleep    2
    Press Keys    NONE    ENTER 
    Sleep    3
    Unselect Frame
    Sleep    2
    ${is_visible} =    Run Keyword And Return Status    Element Should Be Visible    ${warning_file_not_created}
    Run Keyword If    ${is_visible}    Run Keywords
    ...    Click Element    ${ok_universal}
    ...    AND    Click On Composed Locator    ${import_option_select}    Local
    ...    AND    Click On Composed Locator    ${import_option_select}    Google Drive
    ...    AND    Sleep    3
    ...    AND    Browse from Google Drive
    ...    AND    Navigate to "SoraFuel" from Google Drive
    ...    AND    Select File with "${number}" iterations from Google Drive 
    Capture Page Screenshot


Verify that in both Anode and Cathode, the Catalyst Layer, the field Catalyst is not editable
    [Documentation]    Verify that in both Anode and Cathode, the Catalyst Layer, the field Catalyst is not editable
    ...
    ...    == Description: ==
    ...    Verify that in both Anode and Cathode, the Catalyst Layer, the field Catalyst is not editable
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    Verify that in Anode Catalyst Layer, the field Catalyst is not editable
    Verify that in Cathode Catalyst Layer, the field Catalyst is not editable

