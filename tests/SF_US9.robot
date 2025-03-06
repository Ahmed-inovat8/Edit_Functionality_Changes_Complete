*** Settings ***
Resource          ../resources/low_level_keywords.resource
Resource          ../resources/medium_level_keywords.resource
Resource          ../resources/high_level_keywords.resource
Resource    ../resources/db_keywords.resource

*** Test Cases ***
US9 Uploading PStat EIS File
    Login to Sora Fuel
    Create a New Project from Dashboard
    Enter all the following credentials in New Project Page "Ahmed Mazhar", "File Upload Testing", "Ahmed"
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
    Skip a Step
    Skip a Step
    Select Import type for Upload DC Power Supply to "Google Drive"
    Select Import type for Upload DC Power Supply to "Local"
    Select Import type for Upload DC Power Supply to "Google Drive"
    Enter Label "P Stat Configuration" in PStat EIS Data
    Browse drive to Sorafuel Folder
    Navigate to Sora Fuel Folder on Google Drive
    Select File with "4" iterations from Google Drive
    Navigate to PStat LSV Page from PStat EIS Page
    Skip a Step
    [Teardown]    Close all Tests for Sora Fuel