*** Settings ***
Resource          ../resources/low_level_keywords.resource
Resource          ../resources/medium_level_keywords.resource
Resource          ../resources/high_level_keywords.resource
Resource    ../resources/db_keywords.resource

*** Test Cases ***
US8 Checking the Resume and Skip Functionalities Via Database
    Login to Sora Fuel while adding Bezzomate
    Create a New Project from Dashboard
    Enter all the following credentials in New Project Page "Ahmed Mazhar", "DB Testing", "Ahmed"
    Enter a New Project ID "9" from New Project Page and Save Changes
    Navigate to the MEA Page for "P0009"
    Initiate MEA
    Create New Experiment "1" from Select Experiment Page
    Start New Experiment "1" from Select Experiment Page
    Create a New MEA UserInput ID "1" from Initiation Page
    Set Fabricated by to "Ahmed" from MEA Details on Initiation Page
    Select the following Value "-1032ur09wu" for the "Catalyst Layer Anode ID" from Experiment Initiation page
    Select the following Value "456" for the "Catalyst Layer Cathode ID" from Experiment Initiation page
    Save Changes from Initiation Page
    Add Test Details "Test Station" from Testing Details Page with Value "DSV1"
    Navigate to Upload DC Power Supply Results Page from Testing Details Page
    Navigate to Dashboard Page
    Navigate to the MEA Page for "P0009"
    Navigate to Resume from Select Experiment Page
    Access Bezzomate
    Navigate to the Category "State" from Bezzomate
    Navigate to the Category "Test" in State
    Verify value "TestDetails (TestDetails)" on position "10" for Step "CompletionStatus" via scrolls "20"
    Unaccess Bezzomate
    Skip a Step
    Skip a Step
    Skip a Step
    Skip a Step
    Navigate to the MEA Page for "P0009"
    Navigate to View Results from Select Experiment Page
    Access Bezzomate
    Navigate to the Category "State" from Bezzomate 
    Navigate to the Category "Test" in State
    Verify value "false" on position "21" for Step "IsDCUploaded" via scrolls "70"
    Refresh Feed
    [Teardown]    Close all Tests for Sora Fuel