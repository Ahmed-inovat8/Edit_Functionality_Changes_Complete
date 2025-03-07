*** Settings ***
Resource          ../resources/low_level_keywords.resource
Resource          ../resources/medium_level_keywords.resource
Resource          ../resources/high_level_keywords.resource
Resource          ../resources/db_keywords.resource

*** Test Cases ***
US3 Testing 1 to Many Association of Experiment with MEA
    Login to Sora Fuel while adding Bezzomate
    Create a New Project from Dashboard
    Enter all the following credentials in New Project Page "Experiments against MEAs", "Automation Testing", "Ahmed"
    Enter a New Project ID "9" from New Project Page and Save Changes
    Navigate to the MEA Page for "P0009"
    Initiate MEA
    Create Multiple Incremental Experiments "2" "1"
    Start New Experiment "1" from Select Experiment Page
    Create a New MEA UserInput ID "1" from Initiation Page
    Verify MEA Super ID as "P0009-E0001-M0001" from Experiment Initiation Page
    Set Fabricated by to "Ahmed" from MEA Details on Initiation Page
    Select the following Value "-1032ur09wu" for the "Catalyst Layer Anode ID" from Experiment Initiation page
    Select the following Value "456" for the "Catalyst Layer Cathode ID" from Experiment Initiation page
    Save Changes from Initiation Page
    Navigate to Upload DC Power Supply Results Page from Testing Details Page
    Access Bezzomate
    Navigate to the Category "State" from Bezzomate
    Verify that the new MEA for Category "MEA" has the ID "P0009-E0001-M0001" in the database
    Refresh Feed

    Navigate to the MEA Page for "P0009"
    Initiate MEA
    Start New Experiment "1" from Select Experiment Page
    Create a New MEA UserInput ID "2" from Initiation Page
    Verify MEA Super ID as "P0009-E0001-M0002" from Experiment Initiation Page
    Set Fabricated by to "Ahmed" from MEA Details on Initiation Page
    Select the following Value "-1032ur09wu" for the "Catalyst Layer Anode ID" from Experiment Initiation page
    Select the following Value "456" for the "Catalyst Layer Cathode ID" from Experiment Initiation page
    Save Changes from Initiation Page
    Navigate to Upload DC Power Supply Results Page from Testing Details Page
    Access Bezzomate
    Navigate to the Category "State" from Bezzomate
    Verify that the new MEA for Category "MEA" has the ID "P0009-E0001-M0002" in the database
    Refresh Feed

    Navigate to the MEA Page for "P0009"
    Initiate MEA
    Start New Experiment "2" from Select Experiment Page
    Create a New MEA UserInput ID "1" from Initiation Page
    Verify MEA Super ID as "P0009-E0002-M0001" from Experiment Initiation Page
    Set Fabricated by to "Ahmed" from MEA Details on Initiation Page
    Select the following Value "-1032ur09wu" for the "Catalyst Layer Anode ID" from Experiment Initiation page
    Select the following Value "456" for the "Catalyst Layer Cathode ID" from Experiment Initiation page
    Save Changes from Initiation Page
    Navigate to Upload DC Power Supply Results Page from Testing Details Page
    Access Bezzomate
    Navigate to the Category "State" from Bezzomate
    Verify that the new MEA for Category "MEA" has the ID "P0009-E0002-M0001" in the database
    Refresh Feed

    Navigate to the MEA Page for "P0009"
    Initiate MEA
    Start New Experiment "2" from Select Experiment Page
    Create a New MEA UserInput ID "2" from Initiation Page
    Verify MEA Super ID as "P0009-E0002-M0002" from Experiment Initiation Page
    Set Fabricated by to "Ahmed" from MEA Details on Initiation Page
    Select the following Value "-1032ur09wu" for the "Catalyst Layer Anode ID" from Experiment Initiation page
    Select the following Value "456" for the "Catalyst Layer Cathode ID" from Experiment Initiation page
    Save Changes from Initiation Page
    Navigate to Upload DC Power Supply Results Page from Testing Details Page
    Access Bezzomate
    Navigate to the Category "State" from Bezzomate
    Verify that the new MEA for Category "MEA" has the ID "P0009-E0002-M0002" in the database


    
    [Teardown]    Close all Tests for Sora Fuel

