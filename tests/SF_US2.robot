*** Settings ***
Resource          ../resources/low_level_keywords.resource
Resource          ../resources/medium_level_keywords.resource
Resource          ../resources/high_level_keywords.resource

*** Test Cases ***
US2 Creating and Deleting Multiple Projects
    Login to Sora Fuel
    Create a New Project from Dashboard
    Enter all the following credentials in New Project Page "Automation Test", "Testing via Robot Framework", "Ahmed"
    Enter a New Project ID "111" from New Project Page and Save Changes
    Verify that the newly created Project with ID "P0111" is at the top
    Delete a Project from Dashboard
    Create a New Project from Dashboard
    Enter all the following credentials in New Project Page "Automation Test", "Testing via Robot Framework", "Ahmed"
    Enter a New Project ID "111" from New Project Page and Save Changes
    Verify that the newly created Project with ID "P0111" is at the top
    Create a New Project from Dashboard
    Enter all the following credentials in New Project Page "Automation Test", "Testing via Robot Framework", "Ahmed"
    Enter a New Project ID "222" from New Project Page and Save Changes
    Verify that the newly created Project with ID "P0222" is at the top
    Create a New Project from Dashboard
    Enter all the following credentials in New Project Page "Automation Test", "Testing via Robot Framework", "Ahmed"
    Enter a New Project ID "333" from New Project Page and Save Changes
    Verify that the newly created Project with ID "P0333" is at the top
    Create a New Project from Dashboard
    Enter all the following credentials in New Project Page "Automation Test", "Testing via Robot Framework", "Ahmed"
    Enter a New Project ID "444" from New Project Page and Save Changes
    Verify that the newly created Project with ID "P0444" is at the top
    Delete all Projects from Dashboard

    [Teardown]    Close Browser