*** Settings ***
Resource          ../resources/low_level_keywords.resource
Resource          ../resources/medium_level_keywords.resource
Resource          ../resources/high_level_keywords.resource
Resource    ../resources/db_keywords.resource

*** Test Cases ***
US5 Verifying Assosciayion MEA to Test and to Master Data/ Instance Verification
    Login to Sora Fuel while adding Bezzomate
    Create a New Project from Dashboard
    Enter all the credentials in New Project Page "Automation Test", "Testing via Robot Framework", "2/20/2025", "Ahmed"
    Enter a New Project ID "9" from New Project Page and Save Changes
    Navigate to the MEA Page for "P0009"
    Initiate MEA
    Create New Experiment "1" from Select Experiment Page
    Start New Experiment "1" from Select Experiment Page
    Create a New MEA UserInput ID "1" from Initiation Page
    Add Date of Fabrication "27" from MEA Details on Initiation Page
    Verify MEA Super ID as "P0009-E0001-M0001" from Experiment Initiation Page
    Set Fabricated by to "Ahmed" from MEA Details on Initiation Page
    Select the following Value "-1032ur09wu" for the "Catalyst Layer Anode ID" from Experiment Initiation page
    Select the following Value "12345" for Anode Additive Layer ID from Experiment Initiation page
    Select the following Value "456" for the "Catalyst Layer Cathode ID" from Experiment Initiation page
    Save Changes from Initiation Page
    Access Bezzomate
    Navigate to the Category "State" from Bezzomate
    Verify that the new MEA for Category "MEA" has only one instance in the database
    Verify that the new MEA for Category "Test" has only one instance in the database
    Verify that the new MEA for Category "Project" has only one instance in the database
    Verify that the new MEA for Category "Anolyte" has only one instance in the database
    Verify that the new MEA for Category "Catholyte" has only one instance in the database
    Navigate to the Category "Database" from Bezzomate
    Verify 1 to Many Association between Anolyte/Catholyte with "4" Components
    Unaccess Bezzomate
    Add Test Details "Test Station" from Testing Details Page with Value "DSV1"
    Navigate to Upload DC Power Supply Results Page from Testing Details Page
    Refresh Feed
    Navigate to the MEA Page for "P0009"
    Initiate MEA
    Start New Experiment "1" from Select Experiment Page
    Create a New MEA UserInput ID "2" from Initiation Page
    Add Date of Fabrication "27" from MEA Details on Initiation Page
    Verify MEA Super ID as "P0009-E0001-M0002" from Experiment Initiation Page
    Set Fabricated by to "Ahmed" from MEA Details on Initiation Page
    Select the following Value "-1032ur09wu" for the "Catalyst Layer Anode ID" from Experiment Initiation page
    Select the following Value "12345" for Anode Additive Layer ID from Experiment Initiation page
    Select the following Value "456" for the "Catalyst Layer Cathode ID" from Experiment Initiation page
    Save Changes from Initiation Page
    Access Bezzomate
    Navigate to the Category "State" from Bezzomate
    Verify that the new MEA for Category "MEA" has only one instance in the database
    Verify that the new MEA for Category "Test" has only one instance in the database
    Verify that the new MEA for Category "Project" has only one instance in the database
    Verify that the new MEA for Category "Anolyte" has only one instance in the database
    Verify that the new MEA for Category "Catholyte" has only one instance in the database
    Navigate to the Category "Database" from Bezzomate
    Verify 1 to Many Association between Anolyte/Catholyte with "4" Components
    Unaccess Bezzomate
    Add Test Details "Test Station" from Testing Details Page with Value "DSV1"
    Navigate to Upload DC Power Supply Results Page from Testing Details Page
    [Teardown]    Close Test for Sora Fuel