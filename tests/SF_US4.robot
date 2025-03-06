*** Settings ***
Resource          ../resources/low_level_keywords.resource
Resource          ../resources/medium_level_keywords.resource
Resource    ../resources/high_level_keywords.resource

*** Test Cases ***
US3 Creating Experiments Against Multiple MEAs and Verifying MEAs
    Login to Sora Fuel
    Create a New Project from Dashboard
    Enter all the following credentials in New Project Page "Experiments against MEAs", "Automation Testing", "Ahmed"
    Enter a New Project ID "3" from New Project Page and Save Changes
    Navigate to the MEA Page for "P0003"
    Initiate MEA
    Create Multiple Incremental Experiments "2" "1"
    Verify error for entering an experiment value already present "2"
    Start New Experiment "1" from Select Experiment Page
    Create a New MEA UserInput ID "1" from Initiation Page
    Verify MEA Super ID as "P0003-E0001-M0001" from Experiment Initiation Page
    Set Fabricated by to "Ahmed" from MEA Details on Initiation Page
    Select the following Value "-1032ur09wu" for the "Catalyst Layer Anode ID" from Experiment Initiation page
    Select the following Value "456" for the "Catalyst Layer Cathode ID" from Experiment Initiation page
    Save Changes from Initiation Page
    Navigate to Upload DC Power Supply Results Page from Testing Details Page
    Navigate to Dashboard Page
    Navigate to the MEA Page for "P0003"
    Initiate MEA
    Start New Experiment "1" from Select Experiment Page
    Create a New MEA UserInput ID "2" from Initiation Page
    Verify MEA Super ID as "P0003-E0001-M0002" from Experiment Initiation Page
    Set Fabricated by to "Ahmed" from MEA Details on Initiation Page
    Select the following Value "-1032ur09wu" for the "Catalyst Layer Anode ID" from Experiment Initiation page
    Select the following Value "456" for the "Catalyst Layer Cathode ID" from Experiment Initiation page
    Save Changes from Initiation Page
    Navigate to Upload DC Power Supply Results Page from Testing Details Page
    Navigate to Dashboard Page
    Navigate to the MEA Page for "P0003"
    Initiate MEA
    Start New Experiment "2" from Select Experiment Page
    Create a New MEA UserInput ID "1" from Initiation Page
    Verify MEA Super ID as "P0003-E0002-M0001" from Experiment Initiation Page
    Set Fabricated by to "Ahmed" from MEA Details on Initiation Page
    Select the following Value "-1032ur09wu" for the "Catalyst Layer Anode ID" from Experiment Initiation page
    Select the following Value "456" for the "Catalyst Layer Cathode ID" from Experiment Initiation page
    Save Changes from Initiation Page
    Navigate to Upload DC Power Supply Results Page from Testing Details Page
    Navigate to Dashboard Page
    Navigate to the MEA Page for "P0003"
    Initiate MEA
    Start New Experiment "2" from Select Experiment Page
    Create a New MEA UserInput ID "2" from Initiation Page
    Verify MEA Super ID as "P0003-E0002-M0002" from Experiment Initiation Page
    Set Fabricated by to "Ahmed" from MEA Details on Initiation Page
    Select the following Value "-1032ur09wu" for the "Catalyst Layer Anode ID" from Experiment Initiation page
    Select the following Value "456" for the "Catalyst Layer Cathode ID" from Experiment Initiation page
    Save Changes from Initiation Page
    Navigate to Upload DC Power Supply Results Page from Testing Details Page
    Navigate to Dashboard Page
    Navigate to the MEA Page for "P0003"
    Navigate to the bottom of Project Details Page
    Verify Super ID "P0003-E0001-M0001" from Project Details Page
    Verify Super ID "P0003-E0001-M0002" from Project Details Page
    Select Experiment "E0002" from Project Details Page
    Verify Super ID "P0003-E0002-M0001" from Project Details Page
    Verify Super ID "P0003-E0002-M0002" from Project Details Page


    [Teardown]    Close all Tests for Sora Fuel