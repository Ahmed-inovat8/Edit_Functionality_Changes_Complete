*** Settings ***
Resource          ../resources/low_level_keywords.resource
Resource          ../resources/medium_level_keywords.resource
Resource          ../resources/high_level_keywords.resource
Resource    ../resources/db_keywords.resource

*** Test Cases ***
US10 Verifying Project Delete Functionality from Database
    Login to Sora Fuel while adding Bezzomate
    Access Bezzomate
    Navigate to the Category "Database" from Bezzomate
    Verify that DC Power Supply Readings are "181261"
    Unaccess Bezzomate
    Create a New Project from Dashboard
    Enter all the following credentials in New Project Page "Automation Test", "Testing MEA Edit Functionality", "Ahmed"
    Enter a New Project ID "9" from New Project Page and Save Changes
    Navigate to the MEA Page for "P0009"
    Initiate MEA
    Create New Experiment "1" from Select Experiment Page
    Start New Experiment "1" from Select Experiment Page
    Create a New MEA UserInput ID "1" from Initiation Page
    Verify MEA Super ID as "P0009-E0001-M0001" from Experiment Initiation Page
    Set Fabricated by to "Ahmed" from MEA Details on Initiation Page
    Select the following Value "-1032ur09wu" for the "Catalyst Layer Anode ID" from Experiment Initiation page
    Select the following Value "456" for the "Catalyst Layer Cathode ID" from Experiment Initiation page
    Save Changes from Initiation Page
    Add Test Details "Test Station" from Testing Details Page with Value "DSV1"
    Navigate to Upload DC Power Supply Results Page from Testing Details Page
    Select Import type for Upload DC Power Supply to "Google Drive"
    Enter Label "STD" in Upload DC Power Supply Results Page
    Select Import type for Upload DC Power Supply to "Local"
    Select Import type for Upload DC Power Supply to "Google Drive"
    Browse from Google Drive
    Navigate to "SoraFuel" from Google Drive
    Select File with "3" iterations from Google Drive
    Add file again if error with "3" iterations
    Navigate to GC Files Page from Upload DC Power Supply Page
    Refresh Feed
    Access Bezzomate
    Navigate to the Category "Database" from Bezzomate
    Verify that DC Power Supply Readings are "184574"
    Unaccess Bezzomate
    Delete a Project from Dashboard
    Refresh Feed
    Access Bezzomate
    Navigate to the Category "Database" from Bezzomate
    Verify that DC Power Supply Readings are "181261"
    Unaccess Bezzomate
    [Teardown]    Close Browser