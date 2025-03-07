*** Settings ***
Resource          ../resources/low_level_keywords.resource
Resource          ../resources/medium_level_keywords.resource
Resource    ../resources/high_level_keywords.resource

*** Test Cases ***
US3 Creating Projects against Multiple Experiments
    Login to Sora Fuel
    Create a New Project from Dashboard
    Enter all the following credentials in New Project Page "Project against Experiments", "Automation Testing", "Ahmed"
    Enter a New Project ID "9" from New Project Page and Save Changes
    Navigate to the MEA Page for "P0009"
    Initiate MEA
    Create Multiple Incremental Experiments "3" "1"
    Verify error for entering an experiment value already present "3"
    Navigate to Dashboard from Select Experiment Page
    Create a New Project from Dashboard
    Enter all the following credentials in New Project Page "Project against Experiments", "Automation Testing", "Ahmed"
    Enter a New Project ID "4" from New Project Page and Save Changes
    Navigate to the MEA Page for "P0004"
    Initiate MEA
    Create Multiple Incremental Experiments "3" "1"
    Verify error for entering an experiment value already present "3"
    Navigate to Dashboard from Select Experiment Page
    [Teardown]    Close all Tests for Sora Fuel