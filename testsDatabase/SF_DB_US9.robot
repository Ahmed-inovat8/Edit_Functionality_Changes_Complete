*** Settings ***
Resource          ../resources/low_level_keywords.resource
Resource          ../resources/medium_level_keywords.resource
Resource          ../resources/high_level_keywords.resource
Resource    ../resources/db_keywords.resource

*** Test Cases ***
US9 Checking the Back and Next Functionalities Via Database
    Login to Sora Fuel while adding Bezzomate
    Create a New Project from Dashboard
    Enter all the following credentials in New Project Page "Automation Test", "Testing via Robot Framework", "Ahmed"
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
    Navigate to Upload DC Power Supply Results Page from Testing Details Page
    Select Import type for Upload DC Power Supply to "Google Drive"
    Enter Label "STD" in Upload DC Power Supply Results Page
    Access Bezzomate
    Navigate to the Category "State" from Bezzomate
    Navigate to the Category "MEA" in State
    Verify value "DCResults (DCResults)" on position "5" for Step "CurrentStep" via scrolls "2"
    Unaccess Bezzomate
    Navigate Back from the Current Page
    Access Bezzomate
    Navigate to the Category "State" from Bezzomate
    Navigate to the Category "MEA" in State
    Verify value "MEATestDetails (MEATestDetails)" on position "5" for Step "CurrentStep" via scrolls "2"
    Unaccess Bezzomate
    Go to the Next Page from the Current Page
    Access Bezzomate
    Navigate to the Category "State" from Bezzomate
    Navigate to the Category "MEA" in State
    Verify value "DCResults (DCResults)" on position "5" for Step "CurrentStep" via scrolls "2"
    Unaccess Bezzomate
    Navigate Back from the Current Page
    Access Bezzomate
    Navigate to the Category "State" from Bezzomate
    Navigate to the Category "MEA" in State
    Verify value "MEATestDetails (MEATestDetails)" on position "5" for Step "CurrentStep" via scrolls "2"
    Unaccess Bezzomate
    Go to the Next Page from the Current Page
    Access Bezzomate
    Navigate to the Category "State" from Bezzomate
    Navigate to the Category "MEA" in State
    Verify value "DCResults (DCResults)" on position "5" for Step "CurrentStep" via scrolls "2"
    Unaccess Bezzomate
    
    [Teardown]    Close all Tests for Sora Fuel