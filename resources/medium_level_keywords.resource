*** Settings ***
Library           SeleniumLibrary
Library    DateTime
Resource          locators.resource
Resource          low_level_keywords.resource


*** Keywords ***

Login to Sora Fuel
    [Documentation]    Login to Sora Fuel
    ...
    ...    == Description: ==
    ...    Login to Sora Fuel
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    Open Browser      https://sorafuel.inovat8.com/  chrome
    Maximize Browser Window
    Click On Composed Locator    ${login_credenetials}    Username
    Send Keys to Composed Locator    ${login_credenetials}    Username    Ahmed
    Click On Composed Locator    ${login_credenetials}    Password
    Send Keys to Composed Locator    ${login_credenetials}    Password    Ahmed@123
    Capture Page Screenshot
    Click On Locator    ${signin_button}
    Wait For Locator    ${new_project_button}
    Capture Page Screenshot


Close Test for Sora Fuel
    [Documentation]    Close Test for Sora Fuel
    ...
    ...    == Description: ==
    ...    Close Test for Sora Fuel
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    Refresh Feed
    Delete a Project from Dashboard
    Close Browser


Refresh Feed
    [Documentation]    Refresh Feed
    ...
    ...    == Description: ==
    ...    Refresh Feed
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Reload Page
    Wait For Locator    ${sf_logo}
    Capture Page Screenshot
    

Close all Tests for Sora Fuel
    [Documentation]    Close all Tests for Sora Fuel
    ...
    ...    == Description: ==
    ...    Close all Tests for Sora Fuel
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    Refresh Feed
    Wait For Locator    ${new_project_button}
    Delete all Projects from Dashboard
    Close Browser


Navigate to Dashboard Page
    [Documentation]    Navigate to Dashboard Page
    ...
    ...    == Description: ==
    ...    Navigate to Dashboard Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    Wait For Locator    ${sf_logo}
    Click On Locator    ${sf_logo}
    Click On Locator    ${project_button}
    Wait For Locator    ${new_project_button}
    Capture Page Screenshot


Navigate to MEA Dashboard Page
    [Documentation]    Navigate to MEA Dashboard Page
    ...
    ...    == Description: ==
    ...    Navigate to MEA Dashboard Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    
    Click On Locator    ${sf_logo}
    Wait For Locator    ${mea_dashboard_navigation}
    Click On Locator    ${mea_dashboard_navigation}
    Wait For Locator    ${mea_dashboard_header}
    Capture Page Screenshot



Navigate to Master Data Page
    [Documentation]    Navigate to Master Data Page
    ...
    ...    == Description: ==
    ...    Navigate to Master Data Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    
    Click On Locator    ${sf_logo}
    Wait For Locator    ${master_data_navigation}
    Click On Locator    ${master_data_navigation}
    Wait For Locator    ${master_data_header}
    Capture Page Screenshot


From System Configurations Navigate to the option "${Title}"
    [Documentation]    From System Configurations Navigate to User Management
    ...
    ...    == Description: ==
    ...    From System Configurations Navigate to User Management
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    
    Click On Locator    ${sf_logo}
    Wait For Locator    ${system_configuration_icon}
    Click On Locator    ${system_configuration_icon}
    Wait For Composed Locator    ${system_configuration_option}    ${Title}
    Click On Composed Locator    ${system_configuration_option}    ${Title}
    Capture Page Screenshot

Navigate to Creating a New Account for a New user
    [Documentation]    Navigate to Creating a New Account for a New user 
    ...
    ...    == Description: ==
    ...    Navigate to Creating a New Account for a New user 
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    
    Wait For Locator    ${user_management_header}
    Scroll Element Into View    ${new_local_user}
    Click On Locator    ${new_local_user}
    Wait For Locator    ${new_account_header}
    Capture Page Screenshot


Create New Local User as User with Name: "${FName}" User: "${UName}" Pass: "${Password}"
    [Documentation]    Create a New Local User with User as User Role 
    ...
    ...    == Description: ==
    ...    Create a New Local User with User as User Role 
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    
    Wait For Locator    ${new_account_header}
    ${locator} =   Composed Locator    ${new_user_input fields}    Full name
    Scroll Element Into View    ${locator}
    Click On Locator    ${locator}
    Send Keys To Locator    ${locator}    ${FName}
    Press Keys    NONE    ENTER
    Click On Composed Locator    ${new_user_input fields}    User name
    Send Keys to Composed Locator    ${new_user_input fields}    User name    ${UName}
    Press Keys    NONE    ENTER
    Click On Composed Locator    ${new_user_input fields}    User role
    Wait For Locator    ${header_select_user_roles}
    Double Click Element    ${option_user_role}
    Wait For Locator    ${new_account_header}
    ${locator1} =   Composed Locator    ${new_user_input fields}    New password
    Scroll Element Into View    ${locator1}
    Click On Locator    ${locator1}
    Send Keys To Locator    ${locator1}    ${Password}
    Press Keys    NONE    ENTER
    ${locator2} =   Composed Locator    ${new_user_input fields}    Confirm password
    Scroll Element Into View    ${locator2}
    Click On Locator    ${locator2}
    Send Keys To Locator    ${locator2}    ${Password}
    Press Keys    NONE    ENTER
    Wait For Locator    ${save_universal}
    Click On Locator    ${save_universal}
    Capture Page Screenshot

Re-enter Password after error "${Password}"
    [Documentation]    Re-enter Password after error 
    ...
    ...    == Description: ==
    ...    Re-enter Password after error
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    ${locator1} =   Composed Locator    ${new_user_input fields}    New password
    Wait For Locator    ${locator1}
    Scroll Element Into View    ${locator1}
    Click On Locator    ${locator1}
    Press Keys    NONE    CTRL+A
    Sleep    0.5
    Press Keys    NONE    BACKSPACE
    Sleep    0.5
    Send Keys To Locator    ${locator1}    ${Password}
    Press Keys    NONE    ENTER
    ${locator2} =   Composed Locator    ${new_user_input fields}    Confirm password
    Scroll Element Into View    ${locator2}
    Click On Locator    ${locator2}
    Press Keys    NONE    CTRL+A
    Sleep    0.5
    Press Keys    NONE    BACKSPACE
    Sleep    0.5
    Send Keys To Locator    ${locator2}    ${Password}
    Press Keys    NONE    ENTER
    Wait For Locator    ${save_universal}
    Click On Locator    ${save_universal}
    Capture Page Screenshot


Verify Password Error for not Fulfilling the Password Criteria
    [Documentation]    Verify Password Error for not fulfilling the password criteria 
    ...
    ...    == Description: ==
    ...    Verify Password Error for not fulfilling the password criteria
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    
    Wait For Locator    ${password_error}
    Click On Locator    ${ok_universal} 
    Wait For Locator    ${new_account_header}
    Capture Page Screenshot


Delete the User "${User}" from User Management Page
    [Documentation]    Delete the User from User Management Page 
    ...
    ...    == Description: ==
    ...    Delete the User from User Management Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    
    Wait For Locator    ${user_management_header}
    ${locator} =   Composed Locator    ${users_table}    ${User}
    Wait For Locator    ${locator}
    Scroll Element Into View    ${locator}
    Click On Locator    ${locator}
    Capture Page Screenshot
    Scroll Element Into View    ${delete_universal}
    Capture Page Screenshot
    Click On Locator    ${delete_universal}
    Wait For Locator    ${ok_universal}
    Click On Locator    ${ok_universal}
    Capture Page Screenshot
    Wait For Locator    ${user_management_header}



Navigate to Dashboard from Select Experiment Page
    [Documentation]    Navigate to Dashboard from Select Experiment Page
    ...
    ...    == Description: ==
    ...    Navigate to Dashboard from Select Experiment Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    
    Wait For Locator    ${sf_logo}
    Click On Locator    ${close_select_experiment}
    Wait Until Element Is Not Visible    ${close_select_experiment}
    Click On Locator    ${project_button}
    Wait For Locator    ${new_project_button}
    Capture Page Screenshot

Navigate to the Available Resume from the Ongoing MEA
    [Documentation]    Navigate to the Available Resume from the Ongoing MEA
    ...
    ...    == Description: ==
    ...    Navigate to the Available Resume from the Ongoing MEA
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    
    Scroll Element Into View    ${resume_universal}
    Click On Locator    ${resume_universal}
    Capture Page Screenshot


Delete all Projects from Dashboard
    [Documentation]    Create a New Project from Dashboard
    ...
    ...    == Description: ==
    ...    Create a New Project from Dashboard
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    ${Elements} =   Get WebElements    ${del_project}
    ${numbers} =   Get Length    ${Elements}
    Convert To Integer    ${numbers}
    FOR    ${index}    IN RANGE    ${numbers}
        Delete a Project from Dashboard
        Wait Until Element Is Not Visible    ${del_progress_msg}
        Sleep    5
    END
    Capture Page Screenshot

Delete a Project from Dashboard
    [Documentation]    Create a New Project from Dashboard
    ...
    ...    == Description: ==
    ...    Create a New Project from Dashboard
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Wait For Locator    ${del_project}
    Click On Locator    ${del_project}
    Click On Locator    ${del_proceed}
    Wait Until Element Is Not Visible    ${del_progress_msg}
    Capture Page Screenshot


Create a New Project from Dashboard
    [Documentation]    Create a New Project from Dashboard
    ...
    ...    == Description: ==
    ...    Create a New Project from Dashboard
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Wait For Locator    ${new_project_button}
    Click On Locator    ${new_project_button}
    Wait For Locator    ${new_project_id}
    Capture Page Screenshot


Enter a New Project ID "${ID}" from New Project Page and Save Changes
    [Documentation]    Enter a New Project ID from New Project Page and Save Changes
    ...
    ...    == Description: ==
    ...    Enter a New Project ID from New Project Page and Save Changes
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    Click On Locator    ${new_project_id}
    Send Keys To Locator    ${new_project_id}    ${ID}
    Capture Page Screenshot
    Click On Locator    ${new_project_save}
    Wait For Locator    ${new_project_button}
    Capture Page Screenshot


Create a New Project and Enter a new Project ID "${ID}"
    [Documentation]    Create a New Project and Enter a new Project ID
    ...
    ...    == Description: ==
    ...    Create a New Project and Enter a new Project ID
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    Create a New Project from Dashboard
    Click On Locator    ${new_project_id}
    Send Keys To Locator    ${new_project_id}    ${ID}        
    Capture Page Screenshot

Delete Files
    [Documentation]    Delete Files
    ...
    ...    == Description: ==
    ...    Delete Files
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    From System Configurations Navigate to the option "Remove Files"
    Wait For Locator    ${proceed_universal}
    Click On Locator    ${proceed_universal}
    Wait For Locator    ${ok_universal}
    Click On Locator    ${ok_universal}
    Sleep    2
    Capture Page Screenshot





Navigate to the MEA Page for "${Project_no}"
    [Documentation]    Navigate to the MEA Page for ${Project_no}
    ...
    ...    == Description: ==
    ...    Navigate to the MEA Page for ${Project_no}
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    
    Click On Composed Locator    ${project_id}    ${Project_no}  
    Wait For Locator    ${project_details_header}  
    Capture Page Screenshot

Navigate to the bottom of Project Details Page
    [Documentation]    Navigate to the bottom of Project Details Page
    ...
    ...    == Description: ==
    ...    Navigate to the bottom of Project Details Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    Wait For Locator    ${project_details_header}
    Click On Locator    ${project_details_header}
    Scroll To End Of Page
    Sleep    2    
    Capture Page Screenshot

Select Experiment "${Experiment}" from Project Details Page
    [Documentation]    Select Experiment from Project Details Page
    ...
    ...    == Description: ==
    ...    Select Experiment from Project Details Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    Wait For Composed Locator    ${experiment_selection}    ${Experiment}
    Click On Composed Locator    ${experiment_selection}    ${Experiment}
    Sleep    2    
    Capture Page Screenshot


Navigate to My MEAs from Project Details Page
    [Documentation]    Navigate to My MEAs from Project Details Page
    ...
    ...    == Description: ==
    ...    Navigate to My MEAs from Project Details Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    Wait For Locator    ${project_details_my_meas}
    Click On Locator    ${project_details_my_meas}
    Sleep    2    
    Capture Page Screenshot



Verify Super ID "${ID}" from Project Details Page
    [Documentation]    Verify Super ID from Project Details Page
    ...
    ...    == Description: ==
    ...    Verify Super ID from Project Details Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    Wait For Composed Locator    ${project_details_super_id}    ${ID}
    Capture Page Screenshot



Navigate to Testing Details from DC Page
    [Documentation]    Navigate to Testing Details from DC Page
    ...
    ...    == Description: ==
    ...    Navigate to Testing Details from DC Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    
    Wait For Locator    ${back_universal}
    Scroll Element Into View    ${back_universal}
    Click On Locator    ${back_universal}    
    Capture Page Screenshot

Navigate to DC Page from Testing Details Page again after Testing Details have been saved once
    [Documentation]    Navigate to DC Page from Testing Details Page again after Testing Details have been saved once
    ...
    ...    == Description: ==
    ...    Navigate to DC Page from Testing Details Page again after Testing Details have been saved once
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    
    Wait For Locator    ${next_universal}
    Scroll Element Into View    ${next_universal}
    Click On Locator    ${next_universal}    
    Capture Page Screenshot


Initiate MEA
    [Documentation]    Initiate MEA
    ...
    ...    == Description: ==
    ...    Initiate MEA
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Click On Locator    ${btn_initiate_mea}
    Wait For Locator    ${create_new_experiment}    
    Capture Page Screenshot



Create New Experiment "${Experiment}" from Select Experiment Page
    [Documentation]    Create New Experiment from Select Experiment Page
    ...
    ...    == Description: ==
    ...    Create New Experiment from Select Experiment Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Click On Locator    ${create_new_experiment}
    Wait For Locator    ${input_experiment_id}
    Click On Locator    ${input_experiment_id}
    Send Keys To Locator    ${input_experiment_id}    ${Experiment}
    Click On Locator    ${save_universal}
    Wait Until Element Is Not Visible    ${edit_experiment_header}
    Wait For Locator    ${create_new_experiment}
    Capture Page Screenshot


From Project Details Page Verify the Category "${Category}" with iterations "${Number}"
    [Documentation]    From Project Details Page Verify the Category
    ...
    ...    == Description: ==
    ...    From Project Details Page Verify the Category
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Wait For Locator    ${header_project_id}
    Click On Locator    ${header_project_id}
    Scroll To End Of Page
    Capture Page Screenshot
    FOR    ${index}    IN RANGE    ${Number}
        Press Keys    NONE    ARROW_RIGHT
        Sleep    0.05
    END
    Wait For Composed Locator    ${project_details_table_category}    ${Category}
    Capture Page Screenshot

Delete MEA with ID "${ID}" from Project Initiation Page
    [Documentation]    Delete MEA with ID "${ID}" from Project Initiation Page
    ...
    ...    == Description: ==
    ...    Delete MEA with ID "${ID}" from Project Initiation Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Wait For Locator    ${header_project_id}
    Click On Locator    ${header_project_id}
    Scroll To End Of Page
    Capture Page Screenshot
    FOR    ${index}    IN RANGE    50
        Press Keys    NONE    ARROW_RIGHT
        Sleep    0.05
    END
    Wait For Locator    ${universal_view_results}
    Click On Locator    ${universal_view_results}
    Wait For Locator    ${header_results_page}
    Capture Page Screenshot




Navigate to View Results from Select Experiment Page
    [Documentation]    Navigate to the bottom of the page from Select Experiment Page
    ...
    ...    == Description: ==
    ...    Navigate to the bottom of the page from Select Experiment Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Wait For Locator    ${header_project_id}
    Click On Locator    ${header_project_id}
    Scroll To End Of Page
    Capture Page Screenshot
    FOR    ${index}    IN RANGE    50
        Press Keys    NONE    ARROW_RIGHT
        Sleep    0.05
    END
    Wait For Locator    ${universal_view_results}
    Click On Locator    ${universal_view_results}
    Wait For Locator    ${header_results_page}
    Capture Page Screenshot


Navigate to Resume from Select Experiment Page
    [Documentation]    Navigate to the bottom of the page from Select Experiment Page
    ...
    ...    == Description: ==
    ...    Navigate to the bottom of the page from Select Experiment Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Wait For Locator    ${header_project_id}
    Click On Locator    ${header_project_id}
    Scroll To End Of Page
    Capture Page Screenshot
    FOR    ${index}    IN RANGE    36
        Press Keys    NONE    ARROW_RIGHT
        Sleep    0.05
    END
    Wait For Locator    ${resume_universal}
    Click On Locator    ${resume_universal}
    Sleep    3
    Capture Page Screenshot



Verify error for entering an experiment value already present "${Experiment}"
    [Documentation]    Verify error for entering an experiment value already present
    ...
    ...    == Description: ==
    ...    Verify error for entering an experiment value already present
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Click On Locator    ${create_new_experiment}
    Wait For Locator    ${input_experiment_id}
    Click On Locator    ${input_experiment_id}
    Send Keys To Locator    ${input_experiment_id}    ${Experiment}
    Click On Locator    ${save_universal}
    Wait For Locator    ${error_msg}
    Click On Locator    ${cancel_experiment}
    Wait Until Element Is Not Visible    ${edit_experiment_header}
    Wait For Locator    ${create_new_experiment}
    Capture Page Screenshot


Cancel Out from Create MEA
    [Documentation]    Cancel Out from Create MEA
    ...
    ...    == Description: ==
    ...    Cancel Out from Create MEA
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Wait Until Element Is Not Visible    ${loader_universal}
    Wait For Locator    ${cancel_universal}
    Scroll Element Into View    ${cancel_universal}
    Click On Locator    ${cancel_universal}
    Wait Until Element Is Not Visible    ${loader_universal}
    Capture Page Screenshot



Start New Experiment "${Experiment}" from Select Experiment Page
    [Documentation]    Start New Experiment from Select Experiment Page
    ...
    ...    == Description: ==
    ...    Start New Experiment from Select Experiment Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Click On Composed Locator    ${start_new_experiment_checkbox}    ${Experiment}
    Click On Locator    ${button_start}
    Wait For Locator    ${experiment_yes}
    Click On Locator    ${experiment_yes}
    Wait For Locator    ${mea_user_input_id}
    Wait For Locator    ${initiation_header}
    Capture Page Screenshot

Start New Experiment "${Experiment}" from Select Experiment Page and Select No for Standard Test Confirmation
    [Documentation]    Start New Experiment from Select Experiment Page and Select No for Standard Test Confirmation
    ...
    ...    == Description: ==
    ...    Start New Experiment from Select Experiment Page and Select No for Standard Test Confirmation
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Click On Composed Locator    ${start_new_experiment_checkbox}    ${Experiment}
    Click On Locator    ${button_start}
    Wait For Locator    ${experiment_no}
    Click On Locator    ${experiment_no}
    Wait For Locator    ${mea_user_input_id}
    Wait For Locator    ${initiation_header}
    Capture Page Screenshot

Create a New MEA UserInput ID "${UI_ID}" from Initiation Page
    [Documentation]    Create a New MEA UserInput ID from Initiation Page
    ...
    ...    == Description: ==
    ...    Create a New MEA UserInput ID from Initiation Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Scroll Element Into View    ${mea_user_input_id}
    Click On Locator    ${mea_user_input_id}
    Send Keys To Locator    ${mea_user_input_id}    ${UI_ID}
    Capture Page Screenshot

Add Date "${Date}"
    [Documentation]    Add Date 
    ...
    ...    == Description: ==
    ...    Add Date 
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Click On Locator    ${meadetails_date_icon}
    Click On Composed Locator    ${select_current_date}    ${Date}
    Capture Page Screenshot

Add Date of Fabrication "${DOF}" from MEA Details on Initiation Page 
    [Documentation]    Add Date of Fabrication from MEA Details on Initiation Page 
    ...
    ...    == Description: ==
    ...    Add Date of Fabrication from MEA Details on Initiation Page 
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Scroll Element Into View    ${meadetails_date_of_fabrication}
    Click On Locator    ${meadetails_date_icon}
    Click On Composed Locator    ${select_current_date}    ${DOF}
    Capture Page Screenshot

Add Test Details "${Option}" from Testing Details Page with Value "${Value}"
    [Documentation]    Input Test Details "${Option}" from Testing Details Page
    ...
    ...    == Description: ==
    ...    Input Test Details "${Option}" from Testing Details Page 
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    ${locator} =   Composed Locator    ${test_details_options_input}    ${Option}
    Scroll Element Into View    ${locator}
    Click On Composed Locator    ${test_details_options_clickable}    ${Option}    
    Send Keys To Locator    ${locator}    ${Value}
    Press Keys    NONE    ENTER
    Capture Page Screenshot



Verify Date of Fabrication to be the same as Current Date "${Current_Date}" 
    [Documentation]    Verify Date of Fabrication to be the same as Current Date 
    ...
    ...    == Description: ==
    ...    Verify Date of Fabrication to be the same as Current Date 
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Scroll Element Into View    ${meadetails_date_of_fabrication}
    Click On Locator    ${meadetails_date_icon}
    Capture Page Screenshot
    Wait For Composed Locator    ${selected_current_date}    ${Current_Date}
    Click On Composed Locator    ${selected_current_date}    ${Current_Date}
    Sleep    1
    Capture Page Screenshot


Set Fabricated by to "${Fabricated_by}" from MEA Details on Initiation Page 
    [Documentation]    Set Fabricated by to "${Fabricated_by}" from MEA Details on Initiation Page 
    ...
    ...    == Description: ==
    ...    Set Fabricated by to "${Fabricated_by}" from MEA Details on Initiation Page 
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Scroll Element Into View    ${meadetails_fabricated_by}
    Click On Locator    ${meadetails_fabricated_by_div}
    Send Keys To Locator    ${meadetails_fabricated_by}    ${Fabricated_by}
    Press Key    ${meadetails_fabricated_by}    \\13
    Capture Page Screenshot


Save Changes from Initiation Page 
    [Documentation]    Save Changes from Initiation Page  
    ...
    ...    == Description: ==
    ...    Save Changes from Initiation Page  
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Scroll Element Into View    ${save_and_next}
    Click On Locator    ${save_and_next}
    Wait For Locator    ${testing_details}
    Capture Page Screenshot

Verify MEA Super ID as "${MEA_S_ID}" from Experiment Initiation Page
    [Documentation]    Verify MEA Super ID from Experiment Initiation Page  
    ...
    ...    == Description: ==
    ...    Verify MEA Super ID from Experiment Initiation Page  
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Wait For Composed Locator    ${mea_super_id}    ${MEA_S_ID}
    Capture Page Screenshot


Navigate to Upload DC Power Supply Results Page from Testing Details Page
    [Documentation]    Navigate to Upload DC Power Supply Results Page from Testing Details Page  
    ...
    ...    == Description: ==
    ...    Navigate to Upload DC Power Supply Results Page from Testing Details Page  
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Wait For Locator    ${save_and_next}
    Scroll Element Into View    ${save_and_next}
    Click On Locator    ${save_and_next}
    Wait For Locator    ${dc_page_header}
    Capture Page Screenshot


Enter Label "${Value}" in Upload DC Power Supply Results Page
    [Documentation]    Enter Label in Upload DC Power Supply Results Page  
    ...
    ...    == Description: ==
    ...    Enter Label in Upload DC Power Supply Results Page   
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Scroll Element Into View    ${input_label}
    Click On Locator    ${input_label_dropdown}
    Send Keys To Locator    ${input_label}    ${Value}
    Press Key    ${input_label}    \\13
    Capture Page Screenshot

Enter Label "${Value}" in PStat EIS Data
    [Documentation]    Enter Label in PStat EIS Data  
    ...
    ...    == Description: ==
    ...    Enter Label in PStat EIS Data   
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Scroll Element Into View    ${input_label}
    Click On Locator    ${input_label_dropdown}
    Send Keys To Locator    ${input_label}    ${Value}
    Press Key    ${input_label}    \\13
    Capture Page Screenshot

Enter Label "${Value}" in GC Results Page
    [Documentation]    Enter Label in GC Results Page  
    ...
    ...    == Description: ==
    ...    Enter Label in GC Results Page   
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Sleep    2
    Wait For Locator    ${input_label}
    Scroll Element Into View    ${input_label}
    Mouse Over    ${input_label_dropdown}
    Click On Locator    ${input_label_dropdown}
    Send Keys To Locator    ${input_label}    ${Value}
    Press Key    ${input_label}    \\13
    Capture Page Screenshot


Enter Label "${Value}" in GC Results Page via pressing Tab
    [Documentation]    Enter Label in GC Results Page via pressing Tab 
    ...
    ...    == Description: ==
    ...    Enter Label in GC Results Page via pressing Tab 
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Wait For Locator    ${input_label_dropdown}
    Click On Locator    ${input_label_dropdown}
    # Sleep    3
    # Press Keys    NONE    TAB
    # Press Keys    NONE    TAB
    # Press Keys    NONE    TAB
    # Press Keys    NONE    TAB
    # Press Keys    NONE    TAB
    # Press Keys    NONE    TAB
    # Press Keys    NONE    TAB
    # Press Keys    NONE    TAB
    # Press Keys    NONE    TAB
    # Press Keys    NONE    TAB
    # Press Keys    NONE    TAB
    # Press Keys    NONE    TAB
    Send Keys To Locator    ${input_label}    ${Value}
    Press Key    ${input_label}    \\13
    Capture Page Screenshot

Select Import type for Upload DC Power Supply to "${Select_Import}"
    [Documentation]    Select Import type for Upload DC Power Supply  
    ...
    ...    == Description: ==
    ...    Select Import type for Upload DC Power Supply   
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Sleep    3
    ${locator} =   Composed Locator    ${import_option_select}    ${Select_Import}
    Wait For Locator    ${locator}
    Scroll Element Into View    ${locator}
    Click On Locator    ${locator}
    Capture Page Screenshot


Browse from Google Drive
    [Documentation]    Browse from Google Drive  
    ...
    ...    == Description: ==
    ...    Browse from Google Drive   
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Wait For Locator    ${browse_drive}
    Scroll Element Into View    ${browse_drive}
    Mouse Over    ${browse_drive}
    Sleep    2
    Click On Locator    ${browse_drive}
    # Sleep    10
    Sleep    2
    Select Frame    ${iframe}
    Wait For Locator    ${my_drive}
    # Sleep    5
    Sleep    2
    Capture Page Screenshot

Browse drive to Sorafuel Folder
    [Documentation]    Browse drive to Sorafuel Folder  
    ...
    ...    == Description: ==
    ...    Browse drive to Sorafuel Folder   
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Wait For Locator    ${browse_drive}
    Scroll Element Into View    ${browse_drive}
    Mouse Over    ${browse_drive}
    Click On Locator    ${browse_drive}
    # Sleep    5
    Sleep    2
    # Wait For Locator    ${iframe}
    Select Frame    ${iframe}
    # Sleep    4
    Sleep    2
    # Press Keys    NONE    ENTER
    # Sleep    4
    Capture Page Screenshot

Browse drive for PStat EIS/LSV
    [Documentation]    Browse drive for PStat EIS  
    ...
    ...    == Description: ==
    ...    Browse drive for PStat EIS   
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Wait For Locator    ${browse_drive}
    Scroll Element Into View    ${browse_drive}
    Mouse Over    ${browse_drive}
    Click On Locator    ${browse_drive}
    # Sleep    5
    Wait For Locator    ${iframe}
    Select Frame    ${iframe}
    Sleep    5
    Press Keys    NONE    ENTER
    Sleep    5
    Capture Page Screenshot



Navigate to "${Folder}" Folder without iteration from Google Drive
    [Documentation]    Navigate to Folder without iteration from Google Drive  
    ...
    ...    == Description: ==
    ...    Navigate to Folder without iteration from Google Drive
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    ${locator} =   Composed Locator    ${select_folder}    ${Folder}
    Wait For Locator    ${locator}
    Double Click Element    ${locator}
    Capture Page Screenshot


Add file again if error with "${number}" iterations
    [Documentation]    Add file again
    ...
    ...    == Description: ==
    ...    Add file again
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    Sleep    2
    ${Elements} =   Get WebElements    ${ok_universal}
    ${numbers} =   Get Length    ${Elements}
    IF    ${numbers} == 1
        Click On Locator    ${ok_universal}
        Select Import type for Upload DC Power Supply to "Local"
        Select Import type for Upload DC Power Supply to "Google Drive"   
        Wait For Locator    ${browse_drive}
        Scroll Element Into View    ${browse_drive}
        Mouse Over    ${browse_drive}
        Sleep    3
        Click On Locator    ${browse_drive}
        Sleep    3
        Select File with "${number}" iterations from Google Drive
        Capture Page Screenshot
    ELSE
        Wait Until Element Is Not Visible    ${ok_universal}   
    END
    


If error select file with "${Number1}" and "${Number2}" iterations again for DC Power Supply with Time "${Time}"
    [Documentation]    Add file again
    ...
    ...    == Description: ==
    ...    Add file again
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    Sleep    6
    ${Elements} =   Get WebElements    ${ok_universal}
    ${numbers} =   Get Length    ${Elements}
    IF    ${numbers} == 1
        Click On Locator    ${ok_universal}
        Click On Locator    ${close_universal}
        Select Import type for Upload DC Power Supply to "Local"
        Select Import type for Upload DC Power Supply to "Google Drive"
        Navigate to Upload GC Files tab
        Browse Drive for the Run: "FID Run : 1"
        # Sleep    0.5
        # Press Keys    NONE    ENTER 
        # Sleep    0.5
        Select File with "${Number1}" iterations from Google Drive
        Capture Page Screenshot
        Browse Drive for the Run: "TCD Run :1"
        Select File with "7" iterations from Google Drive
        Set Time as "40" from GC File Upload
    ELSE
        Wait Until Element Is Not Visible    ${ok_universal}   
    END
    





Navigate to "${Folder}" from Google Drive
    [Documentation]    Navigate to Folder from Google Drive  
    ...
    ...    == Description: ==
    ...    Navigate to Folder from Google Drive   
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    
    # Sleep    3
    ${locator} =   Composed Locator    ${select_folder}    ${Folder}
    ${Elements} =   Get WebElements    ${locator}
    ${numbers} =   Get Length    ${Elements}
    Run Keyword If    ${numbers} > 0    Double Click Element    ${Elements}[${numbers - 1}]
    Wait For Locator    ${folder_sorafuel}  
    Capture Page Screenshot


Select a "${File}" file from Google Drive
    [Documentation]    Select a File from Google Drive  
    ...
    ...    == Description: ==
    ...    Select a File from Google Drive   
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    ${locator} =   Composed Locator    ${file_selection}    ${File}
    Sleep    2
    Wait Until Element Is Visible    ${locator}    timeout=10s
    Scroll Element Into View    ${locator}
    Wait Until Element Is Enabled    ${locator}    timeout=10s
    Sleep    10
    Double Click Element    ${locator}
    Sleep    3
    Unselect Frame
    Sleep    2
    Capture Page Screenshot

Select PS.csv file from Google Drive
    [Documentation]    Select PS.csv File from Google Drive  
    ...
    ...    == Description: ==
    ...    Select PS.csv File from Google Drive   
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    Sleep    10
    Press Keys    NONE    ARROW_RIGHT
    Sleep    0.5
    Press Keys    NONE    ARROW_RIGHT
    Sleep    0.5
    Press Keys    NONE    ENTER 
    Sleep    5
    Unselect Frame
    Sleep    2
    Capture Page Screenshot

Select File with "${number}" iterations from Google Drive
    [Documentation]    Select File with a number of iterations from Google Drive
    ...
    ...    == Description: ==
    ...    Select File with a number of iterations from Google Drive
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    # Sleep    3
    Convert To Integer    ${number}
    FOR    ${index}    IN RANGE    ${number}
        Press Keys    NONE    ARROW_RIGHT
        Sleep    0.3
    END
    # Sleep    4
    Sleep    2
    Press Keys    NONE    ENTER 
    # Sleep    3
    Unselect Frame
    # Sleep    8
    Sleep    2
    Capture Page Screenshot

Select File with "${number}" iterations on data template from Google Drive
    [Documentation]    Select File with a number of iterations from Google Drive
    ...
    ...    == Description: ==
    ...    Select File with a number of iterations from Google Drive
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    Sleep    3
    Press Keys    NONE    ENTER
    Sleep    3
    Convert To Integer    ${number}
    FOR    ${index}    IN RANGE    ${number}
        Press Keys    NONE    ARROW_RIGHT
        Sleep    0.3
    END
    Sleep    4
    Press Keys    NONE    ENTER 
    Sleep    3
    Unselect Frame
    Sleep    2
    Capture Page Screenshot




Select FID_3-3-018_B2_Trial2_Run1.pdf file from Google Drive
    [Documentation]    Select FID_3-3-018_B2_Trial2_Run1.pdf from Google Drive  
    ...
    ...    == Description: ==
    ...    Select FID_3-3-018_B2_Trial2_Run1.pdf from Google Drive   
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    
    Press Keys    NONE    ARROW_RIGHT
    Sleep    0.5
    Press Keys    NONE    ARROW_RIGHT
    Sleep    0.5
    Press Keys    NONE    ARROW_RIGHT
    Sleep    0.5
    Press Keys    NONE    ARROW_RIGHT
    Sleep    0.5
    Press Keys    NONE    ARROW_RIGHT
    Sleep    0.5
    Press Keys    NONE    ARROW_RIGHT
    Sleep    0.5
    Press Keys    NONE    ENTER 
    Sleep    5
    Unselect Frame
    Sleep    2
    Capture Page Screenshot

Select TCD_3-3-018_B2_Trial2_Run2.pdf file from Google Drive
    [Documentation]    Select TCD_3-3-018_B2_Trial2_Run2.pdf from Google Drive  
    ...
    ...    == Description: ==
    ...    Select TCD_3-3-018_B2_Trial2_Run2.pdf from Google Drive   
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    Press Keys    NONE    ARROW_RIGHT
    Sleep    0.5
    Press Keys    NONE    ARROW_RIGHT
    Sleep    0.5
    Press Keys    NONE    ARROW_RIGHT
    Sleep    0.5
    Press Keys    NONE    ARROW_RIGHT
    Sleep    0.5
    Press Keys    NONE    ARROW_RIGHT
    Sleep    0.5
    Press Keys    NONE    ARROW_RIGHT
    Sleep    0.5
    Press Keys    NONE    ARROW_RIGHT
    Sleep    0.5
    Press Keys    NONE    ENTER 
    Sleep    5
    Unselect Frame
    Sleep    2
    Capture Page Screenshot


Navigate to GC Files Page from Upload DC Power Supply Page
    [Documentation]    Navigate to Upload GC Files tab  
    ...
    ...    == Description: ==
    ...    Navigate to Upload GC Files tab   
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Wait For Locator    ${dc_page_header}
    Click On Locator    ${save_and_next}
    Wait For Locator    ${gc_header}



Navigate to PStat EIS Page from GC Files Page
    [Documentation]    Navigate to PStat EIS Page from GC Files Page 
    ...
    ...    == Description: ==
    ...    Navigate to PStat EIS Page from GC Files Page  
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Wait For Locator    ${gc_header}
    Click On Locator    ${save_and_next}
    Wait For Locator    ${p_stat_eis_header}


Navigate to PStat LSV Page from PStat EIS Page
    [Documentation]    Navigate to PStat LSV Page from PStat EIS Page 
    ...
    ...    == Description: ==
    ...    Navigate to PStat LSV Page from PStat EIS Page  
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Wait For Locator    ${p_stat_eis_header}
    Wait For Locator    ${save_and_next}
    Scroll Element Into View    ${save_and_next}
    Click On Locator    ${save_and_next}
    Wait For Locator    ${proceed_universal}
    Click On Locator    ${proceed_universal}
    Wait For Locator    ${ok_universal}
    Click On Locator    ${ok_universal}
    Wait For Locator    ${p_stat_lsv_header}


Navigate to Upload GC Files tab
    [Documentation]    Navigate to Upload GC Files tab  
    ...
    ...    == Description: ==
    ...    Navigate to Upload GC Files tab   
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Click On Locator    ${upload_gc_files}
    Wait For Locator    ${upload_gc_drive_header}
    Capture Page Screenshot


Skip a Step
    [Documentation]    Skip a Step  
    ...
    ...    == Description: ==
    ...    Skip a Step   
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Sleep    3
    Wait Until Element Is Not Visible    ${loader_universal}
    Wait For Locator    ${skip_universal}
    Scroll Element Into View    ${skip_universal}
    Click On Locator    ${skip_universal}
    Wait For Locator    ${proceed_universal}
    Click On Locator    ${proceed_universal}
    Wait Until Element Is Not Visible    ${loader_universal}
    Sleep    3
    Capture Page Screenshot


Navigate Back from the Current Page
    [Documentation]    Skip a Step  
    ...
    ...    == Description: ==
    ...    Skip a Step   
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Wait Until Element Is Not Visible    ${loader_universal}
    Wait For Locator    ${back_universal}
    Scroll Element Into View    ${back_universal}
    Click On Locator    ${back_universal}
    Wait Until Element Is Not Visible    ${loader_universal}
    Capture Page Screenshot

Go to the Next Page from the Current Page
    [Documentation]    Skip a Step  
    ...
    ...    == Description: ==
    ...    Skip a Step   
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Wait Until Element Is Not Visible    ${loader_universal}
    Wait For Locator    ${next_universal}
    Scroll Element Into View    ${next_universal}
    Click On Locator    ${next_universal}
    Wait Until Element Is Not Visible    ${loader_universal}
    Capture Page Screenshot




Browse Drive for the Run: "${Run}"
    [Documentation]    Browse Drive for the FID Run  
    ...
    ...    == Description: ==
    ...    Browse Drive for the FID Run 
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Wait For Composed Locator    ${fid_run_browse_drive}    ${Run}
    Click On Composed Locator    ${fid_run_browse_drive}    ${Run}
    Sleep    5
    Select Frame    ${iframe}
    # Sleep    5
    # Press Keys    NONE    ENTER
    Capture Page Screenshot


Navigate to Sora Fuel Folder on Google Drive
    [Documentation]    Navigate to Sora Fuel Folder on Google Drive
    ...
    ...    == Description: ==
    ...    Browse Drive for the FID Run 
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Sleep    5
    Press Keys    NONE    ENTER
    Sleep    5 
    Capture Page Screenshot



Save Changes from GC File Upload
    [Documentation]    Save Changes from GC File Upload  
    ...
    ...    == Description: ==
    ...    Save Changes from GC File Upload 
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Sleep    2
    Wait For Locator    ${save_universal}
    Click On Locator    ${save_universal}
    Wait For Locator    ${proceed_universal}
    Click On Locator    ${proceed_universal}
    Wait For Locator    ${ok_universal}
    Click On Locator    ${ok_universal}
    Wait Until Element Is Not Visible    ${ok_universal}
    Wait Until Element Is Not Visible    ${loader_universal}
    Capture Page Screenshot


Set Time as "${Time}" from GC File Upload
    [Documentation]    Set Time as from GC File Upload  
    ...
    ...    == Description: ==
    ...    Set Time as from GC File Upload 
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    
    Click On Locator    ${time_label}
    Send Keys To Locator    ${time_label}    ${Time}
    Capture Page Screenshot


Select 3-12-002_BoL-02_03_GEIS_C01.mpt file from Google Drive
    [Documentation]    Select 3-12-002_BoL-02_03_GEIS_C01.mpt file from Google Drive  
    ...
    ...    == Description: ==
    ...    Select 3-12-002_BoL-02_03_GEIS_C01.mpt file from Google Drive   
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    Press Keys    NONE    ARROW_RIGHT
    Sleep    0.5
    Press Keys    NONE    ARROW_RIGHT
    Sleep    0.5
    Press Keys    NONE    ARROW_RIGHT
    Sleep    0.5
    Press Keys    NONE    ENTER 
    Sleep    5
    Unselect Frame
    Sleep    2
    Capture Page Screenshot

Select 3-12-002_BoL-02_01_LSV_C01.mpt file from Google Drive
    [Documentation]    Select 3-12-002_BoL-02_01_LSV_C01.mpt file from Google Drive  
    ...
    ...    == Description: ==
    ...    Select 3-12-002_BoL-02_01_LSV_C01.mpt file from Google Drive   
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    Press Keys    NONE    ARROW_RIGHT
    Sleep    0.5
    Press Keys    NONE    ARROW_RIGHT
    Sleep    0.5
    Press Keys    NONE    ARROW_RIGHT
    Sleep    0.5
    Press Keys    NONE    ARROW_RIGHT
    Sleep    0.5
    Press Keys    NONE    ENTER 
    Sleep    5
    Unselect Frame
    Sleep    2
    Capture Page Screenshot

Select the following Value "${Value}" for the "${Catalyst_Layer_ID}" from Experiment Initiation page
    [Documentation]    Select the following Value "${Value}" for the "${Catalyst_Layer_ID}" from Experiment Initiation page  
    ...
    ...    == Description: ==
    ...    Select the following Value "${Value}" for the "${Catalyst_Layer_ID}" from Experiment Initiation page  
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    
    ${locator} =   Composed Locator    ${id_catalyst_layer_dropdown}    ${Catalyst_Layer_ID}
    Wait For Locator    ${locator}
    Scroll Element Into View    ${locator}
    Click On Locator    ${locator}
    Sleep    0.5
    Press Keys    NONE    CTRL+A
    Sleep    0.5
    Press Keys    NONE    BACKSPACE
    Sleep    0.5
    Send Keys to Composed Locator    ${id_catalyst_layer}    ${Catalyst_Layer_ID}    ${Value}
    Press Keys    NONE    ENTER
    Capture Page Screenshot

Select the following Value "${Value}" for Anode Additive Layer ID from Experiment Initiation page
    [Documentation]    Select the following Value for Anode Additive Layer ID from Experiment Initiation page
    ...
    ...    == Description: ==
    ...    Select the following Value for Anode Additive Layer ID from Experiment Initiation page  
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE


    Wait For Locator    ${anode_additive_layer_id_dd_cross}
    Scroll Element Into View    ${anode_additive_layer_id_dd_cross}
    Click On Locator    ${anode_additive_layer_id_dd_cross}
    Send Keys To Locator    ${anode_additive_layer_id_input}    ${Value}
    Press Keys    NONE    ENTER
    Capture Page Screenshot



Save and Close a Process
    [Documentation]    Save and Close a Process
    ...
    ...    == Description: ==
    ...    Save and Close a Process
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    
    Wait For Locator    ${save_close_universal}
    Scroll Element Into View    ${save_close_universal}
    Click On Locator    ${save_close_universal}
    Capture Page Screenshot
    Wait For Locator    ${ok_universal}
    Click On Locator    ${ok_universal}
    Capture Page Screenshot
    Wait For Locator    ${new_project_button}

Save and Close a Process from MEA Edit Page
    [Documentation]    Save and Close a Process
    ...
    ...    == Description: ==
    ...    Save and Close a Process
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    
    Wait For Locator    ${save_close_universal}
    Scroll Element Into View    ${save_close_universal}
    Click On Locator    ${save_close_universal}
    Capture Page Screenshot
    Wait For Locator    ${mea_dashboard_header}


Verify that Date is already selected as the Current Date "${Current_Date}" 
    [Documentation]    Verify that Date is already selected as the Current Date 
    ...
    ...    == Description: ==
    ...    Verify that Date is already selected as the Current Date
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    Wait For Locator    ${new_project_date_icon}
    Click On Locator    ${new_project_date_icon}
    Capture Page Screenshot
    Wait For Composed Locator    ${selected_current_date}    ${Current_Date}
    Click On Composed Locator    ${selected_current_date}    ${Current_Date}
    Sleep    1

    Capture Page Screenshot


Verify that the newly created Project with ID "${ID}" is at the top
    [Documentation]    Verify that the newly created Project with ID is at the top 
    ...
    ...    == Description: ==
    ...    Verify that the newly created Project with ID is at the top
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    Wait For Composed Locator    ${top_project_id}    ${ID}

    Capture Page Screenshot



Verify that in Anode Catalyst Layer, the field Catalyst is not editable
    [Documentation]    Verify that in Anode Catalyst Layer, the field Catalyst is not editable
    ...
    ...    == Description: ==
    ...    Verify that in Anode Catalyst Layer, the field Catalyst is not editable
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    Scroll Element Into View    ${anode_catalyst_noneditable}
    Wait For Locator    ${anode_catalyst_noneditable}
    Mouse Over    ${anode_catalyst_noneditable}

    Capture Page Screenshot



Verify that in Cathode Catalyst Layer, the field Catalyst is not editable
    [Documentation]    Verify that in Cathode Catalyst Layer, the field Catalyst is not editable 
    ...
    ...    == Description: ==
    ...    Verify that in Cathode Catalyst Layer, the field Catalyst is not editable
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    Scroll Element Into View    ${cathode_catalyst_noneditable}
    Wait For Locator    ${cathode_catalyst_noneditable}
    Mouse Over    ${cathode_catalyst_noneditable}
    Capture Page Screenshot


From Master Data Page, Navigate to following Attribute: "${Attribute}"
    [Documentation]    From Master Data Page, Navigate to following Attribute 
    ...
    ...    == Description: ==
    ...    From Master Data Page, Navigate to following Attribute
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    ${locator} =   Composed Locator    ${attribute_master_date}    ${Attribute}
    Wait For Locator    ${locator}
    Sleep    2
    Scroll Element Into View    ${locator}
    Click On Locator    ${locator}
    Capture Page Screenshot



Create New Master Data Attribute "${New_Attribute}"
    [Documentation]    Create New Master Data Attribute 
    ...
    ...    == Description: ==
    ...    Create New Master Data Attribute
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    Wait For Composed Locator    ${create_new_master_date}    ${New_Attribute}
    Click On Composed Locator    ${create_new_master_date}    ${New_Attribute}
    Capture Page Screenshot


Verify from New Master Data Attribute that "${Element}" has only two options "${Option_1}" and "${Option_2}"
    [Documentation]    Verify from New Master Data Attribute that "${Element}" has only two options 
    ...
    ...    == Description: ==
    ...    Verify from New Master Data Attribute that "${Element}" has only two options
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    Wait For Composed Locator made with two inputs    ${element_master_data_attribute}    ${Element}    ${Option_1}
    Wait For Composed Locator made with two inputs    ${element_master_data_attribute}    ${Element}    ${Option_2}
    Capture Page Screenshot


Verify from New Master Data Attribute that "${Element}" is not a dropdown but string
    [Documentation]    Verify from New Master Data Attribute that "${Element}" has only two options 
    ...
    ...    == Description: ==
    ...    Verify from New Master Data Attribute that "${Element}" has only two options
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    
    Wait For Locator    ${grid_membrane_string}
    Scroll Element Into View    ${grid_membrane_string}
    Write On Locator    ${grid_membrane_string}    ab123
    Element Should Not Be Visible    ${grid_membrane_dropdown}
    Capture Page Screenshot



Cancel Out From Creating a New Attribute For Master Data
    [Documentation]    Cancel Out From Creating a New Attribute For Master Data 
    ...
    ...    == Description: ==
    ...    Cancel Out From Creating a New Attribute For Master Data
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    Wait For Locator    ${cancel_universal}
    Click On Locator    ${cancel_universal}
    Wait For Locator    ${ok_universal}
    Click On Locator    ${ok_universal}
    Capture Page Screenshot

Verify all Attributes from Anolyte/Catholyte are non-ediatble on Testing Details Page
    [Documentation]    Verify all Attributes from Anolyte/Catholyte are non-ediatble on Testing Details Page
    ...
    ...    == Description: ==
    ...    Verify all Attributes from Anolyte/Catholyte are non-ediatble on Testing Details Page
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    
    Scroll Element Into View    ${anolyte_catholyte_noneditable_attributes}
    ${Elements} =   Get WebElements    ${anolyte_catholyte_noneditable_attributes}
    ${numbers} =   Get Length    ${Elements}
    Convert To Integer    ${numbers}
    Run Keyword If    ${numbers} == 8    Wait For Locator    ${testing_details}
    ${Elements2} =   Get WebElements    ${anolyte_catholyte_noneditable_captured_solution}
    ${numbers2} =   Get Length    ${Elements2}
    Convert To Integer    ${numbers2}
    Run Keyword If    ${numbers2} == 2    Wait For Locator    ${testing_details}
    Capture Page Screenshot






Verify there is only one instance of the Label "${Label}" from Testing Details Page
    [Documentation]    Verify there is only one instance of the Label from Testing Details Page
    ...
    ...    == Description: ==
    ...    Verify there is only one instance of the Label from Testing Details Page
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE

    Wait For Composed Locator    ${label_testing_details}    ${Label}
    ${locator} =   Composed Locator    ${label_testing_details}    ${Label}
    ${Elements} =   Get WebElements    ${locator}
    ${numbers} =   Get Length    ${Elements}
    Convert To Integer    ${numbers}
    Run Keyword If    ${numbers} == 1    Wait For Locator    ${locator}
    Capture Page Screenshot



Verify File Name "${FName}" being displayed for the Category "${Category}"
    [Documentation]    Browse from Google Drive  
    ...
    ...    == Description: ==
    ...    Browse from Google Drive   
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Wait For Composed Locator    ${category_results_page}    ${Category}
    Click On Composed Locator    ${category_results_page}    ${Category}
    Click On Locator    ${header_results_page}
    FOR    ${index}    IN RANGE    18
        Press Keys    NONE    ARROW_DOWN
        Sleep    0.05
    END
    Sleep    7
    ${locator} =   Composed Locator    ${category_iframe_results_page}    ${Category}
    Select Frame    ${locator}
    ${locator2} =   Composed Locator    ${file_name_iframe}    ${FName}
    Wait For Locator    ${locator2}
    Sleep    2
    Double Click Element    ${locator2}
    Capture Page Screenshot
    Unselect Frame
    Wait For Composed Locator    ${category_results_page}    ${Category}
    Click On Composed Locator    ${category_results_page}    ${Category}
    Capture Page Screenshot


Verify Error "${Error}" being displayed for the Category "${Category}"
    [Documentation]    Browse from Google Drive  
    ...
    ...    == Description: ==
    ...    Browse from Google Drive   
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Wait For Composed Locator    ${category_results_page}    ${Category}
    Click On Composed Locator    ${category_results_page}    ${Category}
    Wait For Composed Locator    ${category_error}    ${Error}
    Wait For Composed Locator    ${category_results_page}    ${Category}
    Click On Composed Locator    ${category_results_page}    ${Category}

Verify Error "${Error}" being displayed for the Sub-Category EIS Results
    [Documentation]    Browse from Google Drive  
    ...
    ...    == Description: ==
    ...    Browse from Google Drive   
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Wait For Composed Locator    ${category_results_page}    Potentiostat Readings
    Click On Composed Locator    ${category_results_page}    Potentiostat Readings
    Click On Locator    ${sub_category_eis_results}
    Wait For Composed Locator    ${category_error}    ${Error}
    Wait For Composed Locator    ${category_results_page}    Potentiostat Readings
    Click On Composed Locator    ${category_results_page}    Potentiostat Readings


Verify that there is no Text Filter Error
    [Documentation]    Verify Text Filter Error is not visible 
    ...
    ...    == Description: ==
    ...    Verify Text Filter Error is not visible   
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Element Should Not Be Visible    ${error_text_filter_master_data}
    Capture Page Screenshot


Enter ID "${ID}" for the Master Data Attribute "${Attribute}"
    [Documentation]    Enter ID for the Master Data Attribute
    ...
    ...    == Description: ==
    ...    Enter ID for the Master Data Attribute 
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Wait For Locator    ${id_master_date_attributes}
    Click On Locator    ${id_master_date_attributes}
    Press Keys    NONE    CTRL+A
    Sleep    0.5
    Press Keys    NONE    BACKSPACE
    Sleep    0.5
    Send Keys To Locator    ${id_master_date_attributes}    ${ID}
    Press Keys    NONE    ENTER
    Capture Page Screenshot


Enter value "${value}" for Element Manufactured by for the Master Data Attribute "${Attribute}"
    [Documentation]    Enter value for Element for the Master Data Attribute
    ...
    ...    == Description: ==
    ...    Enter value for Element for the Master Data Attribute
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    


    Wait For Locator    ${dd_icon_option_master_date}
    Scroll Element Into View    ${dd_icon_option_master_date}
    Click On Locator    ${dd_icon_option_master_date}
    Press Keys    NONE    CTRL+A
    Sleep    0.5
    Press Keys    NONE    BACKSPACE
    Sleep    0.5
    Send Keys to Composed Locator    ${specific_master_date_attributes}    Manufactured by    ${value}
    Press Keys    NONE    ENTER
    Capture Page Screenshot


Enter value "${value}" for Element Components for the Master Data Attribute "${Attribute}"
    [Documentation]    Enter value for Element Components for the Master Data Attribute
    ...
    ...    == Description: ==
    ...    Enter value for Element Components for the Master Data Attribute
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    


    Wait For Locator    ${dd_icon_components_master_date}
    Scroll Element Into View    ${dd_icon_components_master_date}
    Click On Locator    ${dd_icon_components_master_date}
    Press Keys    NONE    CTRL+A
    Sleep    0.5
    Press Keys    NONE    BACKSPACE
    Sleep    0.5
    Send Keys to Composed Locator    ${specific_master_date_attributes}    Components    ${value}
    Sleep    0.5
    Press Keys    NONE    ENTER
    Capture Page Screenshot






Enter value "${value}" for Element "${Element}" for the Master Data Attribute "${Attribute}"
    [Documentation]    Enter value for Element for the Master Data Attribute
    ...
    ...    == Description: ==
    ...    Enter value for Element for the Master Data Attribute
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    


    ${locator} =   Composed Locator    ${specific_master_date_attributes}    ${Element}
    Wait For Locator    ${locator}
    Scroll Element Into View    ${locator}
    Click On Locator    ${locator}
    Press Keys    NONE    CTRL+A
    Sleep    0.5
    Press Keys    NONE    BACKSPACE
    Sleep    0.5
    Send Keys To Locator    ${locator}    ${value}
    Press Keys    NONE    ENTER
    Capture Page Screenshot



For Dropdowns Enter value "${value}" for Element "${Element}" for the Master Data Attribute "${Attribute}"
    [Documentation]    For Dropdowns Enter value for Element for the Master Data Attribute
    ...
    ...    == Description: ==
    ...    For Dropdowns Enter value for Element for the Master Data Attribute
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    
    ${locator} =   Composed Locator    ${dropdown_master_date_attributes}    ${Element}
    Wait For Locator    ${locator}
    Scroll Element Into View    ${locator}
    Click On Locator    ${locator}
    Sleep    1
    Click On Composed Locator    ${dropdown_option_master_date}    ${value}
    Capture Page Screenshot





Verify Validation Error Message
    [Documentation]    Verify Validation Error Message
    ...
    ...    == Description: ==
    ...    Verify Validation Error Message
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Wait For Locator    ${validation_error_master_date}
    Capture Page Screenshot


Save Changes from Creating a New Master Data Attribute
    [Documentation]    Save Changes from Creating a New Master Data Attribute
    ...
    ...    == Description: ==
    ...    Save Changes from Creating a New Master Data Attribute
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Wait For Locator    ${save_universal}
    Click On Locator    ${save_universal}
    Capture Page Screenshot


Delete the Master Data Entry for ID "${ID}"
    [Documentation]    Delete the Master Data Entry for ID
    ...
    ...    == Description: ==
    ...    Delete the Master Data Entry for ID
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Wait For Composed Locator    ${del_master_data_id}    ${ID}
    Click On Composed Locator    ${del_master_data_id}    ${ID}
    Wait For Locator    ${ok_universal}
    Click On Locator    ${ok_universal}
    Capture Page Screenshot


Delete the Master Data Entry for Name "${Name}"
    [Documentation]    Delete the Master Data Entry for Name
    ...
    ...    == Description: ==
    ...    Delete the Master Data Entry for Name
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Wait For Composed Locator    ${del_master_data_name}    ${Name}
    Click On Composed Locator    ${del_master_data_name}    ${Name}
    Wait For Locator    ${ok_universal}
    Click On Locator    ${ok_universal}
    Capture Page Screenshot


Delete the Master Data Entry for Label "${Label}"
    [Documentation]    Delete the Master Data Entry for Label
    ...
    ...    == Description: ==
    ...    Delete the Master Data Entry for Label
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Wait For Composed Locator    ${del_master_data_label}    ${Label}
    Click On Composed Locator    ${del_master_data_label}    ${Label}
    Wait For Locator    ${ok_universal}
    Click On Locator    ${ok_universal}
    Capture Page Screenshot


Scroll To Delete for Master Data
    [Documentation]    Scroll To Delete for Master Data
    ...
    ...    == Description: ==
    ...    Scroll To Delete for Master Data
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar
    ...
    ...    
    [Tags]    DONE
    
    
    FOR    ${index}    IN RANGE    3
        Press Keys    NONE    ARROW_DOWN
        Sleep    0.05
    END
    Scroll To Right Most Side of the Page
    Sleep    1s


Navigate to the Edit Functionality for the MEA "${Super_ID}" from MEA Dashboard Page
    [Documentation]    Navigate to the Edit Functionality for the MEA "${Super_ID}" from MEA Dashboard Page
    ...
    ...    == Description: ==
    ...    Navigate to the Edit Functionality for the MEA "${Super_ID}" from MEA Dashboard Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Wait For Composed Locator    ${mea_dashboard_superid}    ${Super_ID}
    Click On Composed Locator    ${mea_dashboard_superid}    ${Super_ID}
    Wait For Locator    ${edit_universal}
    Click On Locator    ${edit_universal}
    Wait For Locator    ${mea_edit_header}
    Capture Page Screenshot


Navigate to the View Results Functionality for the MEA "${Super_ID}" from MEA Dashboard Page
    [Documentation]    Navigate to the View Results Functionality for the MEA "${Super_ID}" from MEA Dashboard Page
    ...
    ...    == Description: ==
    ...    Navigate to the View Results Functionality for the MEA "${Super_ID}" from MEA Dashboard Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Wait For Composed Locator    ${mea_dashboard_superid}    ${Super_ID}
    Click On Composed Locator    ${mea_dashboard_superid}    ${Super_ID}
    Wait For Locator    ${universal_view_results}
    Click On Locator    ${universal_view_results}
    Wait For Locator    ${header_results_page}  
    Capture Page Screenshot




Delete the Initial File/Files for "${File_Type}" from the MEA Edit Page
    [Documentation]    Delete the File/Files for "${File_Type}" from the MEA Edit Page
    ...
    ...    == Description: ==
    ...    Delete the File/Files for "${File_Type}" from the MEA Edit Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Wait For Locator    ${delete_file_universal}
    Scroll Element Into View    ${delete_file_universal}
    Wait For Composed Locator    ${select_instrument}    ${File_Type}
    Click On Composed Locator    ${select_instrument}    ${File_Type}
    Wait For Locator    ${delete_file_universal}
    Click On Locator    ${delete_file_universal}
    Click On Locator    ${proceed_universal}
    Click On Locator    ${ok_universal}
    Capture Page Screenshot

Delete the File/Files for "${File_Type}" from the MEA Edit Page
    [Documentation]    Delete the File/Files for "${File_Type}" from the MEA Edit Page
    ...
    ...    == Description: ==
    ...    Delete the File/Files for "${File_Type}" from the MEA Edit Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Wait For Composed Locator    ${select_instrument}    ${File_Type}
    Click On Composed Locator    ${select_instrument}    ${File_Type}
    Wait For Locator    ${delete_file_universal}
    Click On Locator    ${delete_file_universal}
    Click On Locator    ${proceed_universal}
    Click On Locator    ${ok_universal}
    Capture Page Screenshot

Delete the File/Files for PS from the MEA Edit Page and upload a new File with Iterations "${Number}"
    [Documentation]    Delete the File/Files for "${File_Type}" from the MEA Edit Page
    ...
    ...    == Description: ==
    ...    Delete the File/Files for "${File_Type}" from the MEA Edit Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Delete the Initial File/Files for "PS" from the MEA Edit Page
    Browse from Google Drive
    Navigate to "SoraFuel" from Google Drive
    Select File with "${Number}" iterations from Google Drive
    Add file again if error with "${Number}" iterations
    Wait For Composed Locator    ${save_instrument_universal}    Save PS
    Click On Composed Locator    ${save_instrument_universal}    Save PS
    Capture Page Screenshot

While Remembering Folder Delete the File/Files for EIS from the MEA Edit Page and upload a new File with Iterations "${Number}"
    [Documentation]    Delete the File/Files for "${File_Type}" from the MEA Edit Page
    ...
    ...    == Description: ==
    ...    Delete the File/Files for "${File_Type}" from the MEA Edit Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Delete the Initial File/Files for "EIS" from the MEA Edit Page
    Browse drive to Sorafuel Folder
    Select File with "${Number}" iterations from Google Drive
    Wait For Composed Locator    ${save_instrument_universal}    Save EIS
    Click On Composed Locator    ${save_instrument_universal}    Save EIS
    Wait For Locator    ${proceed_universal}
    Click On Locator    ${proceed_universal}
    Wait For Locator    ${ok_universal}
    Click On Locator    ${ok_universal}
    Capture Page Screenshot


While Remembering Folder Delete the File/Files for LSV from the MEA Edit Page and upload a new File with Iterations "${Number}"
    [Documentation]    Delete the File/Files for "${File_Type}" from the MEA Edit Page
    ...
    ...    == Description: ==
    ...    Delete the File/Files for "${File_Type}" from the MEA Edit Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Delete the Initial File/Files for "LSV" from the MEA Edit Page
    Browse drive to Sorafuel Folder
    Select File with "${Number}" iterations from Google Drive
    Wait For Composed Locator    ${save_instrument_universal}    Save LSV
    Click On Composed Locator    ${save_instrument_universal}    Save LSV
    Wait For Locator    ${ok_universal}
    Click On Locator    ${ok_universal}
    Wait Until Element Is Not Visible    ${ok_universal}
    Capture Page Screenshot

While Remembering Folder Delete the File/Files for GC from the MEA Edit Page and upload a new File with Iterations "${Number1}" "${Number2}"
    [Documentation]    Delete the File/Files for "${File_Type}" from the MEA Edit Page
    ...
    ...    == Description: ==
    ...    Delete the File/Files for "${File_Type}" from the MEA Edit Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Delete the Initial File/Files for "GC" from the MEA Edit Page
    Navigate to Upload GC Files tab
    Browse Drive for the Run: "FID Run : 1"
    Select File with "${Number1}" iterations from Google Drive
    Browse Drive for the Run: "TCD Run :1"
    Select File with "${Number2}" iterations from Google Drive
    Set Time as "40" from GC File Upload
    Save Changes from GC File Upload
    If error select file with "${Number1}" and "${Number2}" iterations again for DC Power Supply with Time "40"
    Wait For Composed Locator    ${save_instrument_universal}    Save GC
    Click On Composed Locator    ${save_instrument_universal}    Save GC
    Capture Page Screenshot

Upload a new File for Intrument PS with Iterations "${Number}"
    [Documentation]    Upload a new File for Intrument PS with Iterations "${Number}"
    ...
    ...    == Description: ==
    ...    Upload a new File for Intrument PS with Iterations "${Number}"
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Wait For Locator    ${file_upload_header}
    Scroll Element Into View    ${file_upload_header}
    Wait For Composed Locator    ${select_instrument}    PS
    Click On Composed Locator    ${select_instrument}    PS
    Browse from Google Drive
    Navigate to "SoraFuel" from Google Drive
    Select File with "${Number}" iterations from Google Drive
    Add file again if error with "${Number}" iterations
    Wait For Composed Locator    ${save_instrument_universal}    Save PS
    Click On Composed Locator    ${save_instrument_universal}    Save PS
    Capture Page Screenshot

For Instrument EIS While Remembering Folder upload a new File with Iterations "${Number}"
    [Documentation]    While Remembering Folder upload a new File for EIS with Iterations "${Number}"
    ...
    ...    == Description: ==
    ...    While Remembering Folder upload a new File for EIS with Iterations "${Number}"
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Wait For Locator    ${file_upload_header}
    Scroll Element Into View    ${file_upload_header}
    Wait For Composed Locator    ${select_instrument}    EIS
    Click On Composed Locator    ${select_instrument}    EIS
    Browse drive to Sorafuel Folder
    Select File with "${Number}" iterations from Google Drive
    Wait For Composed Locator    ${save_instrument_universal}    Save EIS
    Click On Composed Locator    ${save_instrument_universal}    Save EIS
    Wait For Locator    ${proceed_universal}
    Click On Locator    ${proceed_universal}
    Wait For Locator    ${ok_universal}
    Click On Locator    ${ok_universal}
    Capture Page Screenshot

For Instrument LSV While Remembering Folder upload a new File with Iterations "${Number}"
    [Documentation]    While Remembering Folder upload a new File for LSV with Iterations "${Number}"
    ...
    ...    == Description: ==
    ...    While Remembering Folder upload a new File for LSV with Iterations "${Number}"
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Wait For Locator    ${file_upload_header}
    Scroll Element Into View    ${file_upload_header}
    Wait For Composed Locator    ${select_instrument}    LSV
    Click On Composed Locator    ${select_instrument}    LSV
    Browse drive to Sorafuel Folder
    Select File with "${Number}" iterations from Google Drive
    Wait For Composed Locator    ${save_instrument_universal}    Save LSV
    Click On Composed Locator    ${save_instrument_universal}    Save LSV
    Wait For Locator    ${ok_universal}
    Click On Locator    ${ok_universal}
    Capture Page Screenshot


For Instrument GC While Remembering Folder upload a new File with Iterations "${Number1}" "${Number2}"
    [Documentation]    While Remembering Folder upload a new File GC with Iterations "${Number1}" "${Number2}"
    ...
    ...    == Description: ==
    ...    While Remembering Folder upload a new File GC with Iterations "${Number1}" "${Number2}"
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar

    [Tags]    DONE
    

    Wait For Locator    ${file_upload_header}
    Scroll Element Into View    ${file_upload_header}
    Wait For Composed Locator    ${select_instrument}    GC
    Click On Composed Locator    ${select_instrument}    GC
    Navigate to Upload GC Files tab
    Browse Drive for the Run: "FID Run : 1"
    Select File with "${Number1}" iterations from Google Drive
    Browse Drive for the Run: "TCD Run :1"
    Select File with "${Number2}" iterations from Google Drive
    Set Time as "40" from GC File Upload
    Save Changes from GC File Upload
    If error select file with "${Number1}" and "${Number2}" iterations again for DC Power Supply with Time "40"
    Wait For Composed Locator    ${save_instrument_universal}    Save GC
    Click On Composed Locator    ${save_instrument_universal}    Save GC
    Capture Page Screenshot



















