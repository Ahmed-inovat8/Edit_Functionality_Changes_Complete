*** Settings ***
Resource          ../resources/low_level_keywords.resource
Resource          ../resources/medium_level_keywords.resource
Resource          ../resources/high_level_keywords.resource
Resource    ../resources/db_keywords.resource

*** Test Cases ***
US4 MEA to MEA Configuration to Master Data/ Instance Verification
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
    Access Bezzomate
    Navigate to the Category "State" from Bezzomate
    Verify that the new MEA for Category "MEA" has only one instance in the database
    Verify that the new MEA for Category "MEAConfiguration" has only one instance in the database
    Verify that the new MEA for Category "Membrane" has only one instance in the database
    Verify that the new MEA for Category "CatalystLayerAnode" has only one instance in the database
    Verify that the new MEA for Category "PTLAnode" has only one instance in the database
    Verify that the new MEA for Category "GDLAnode" has only one instance in the database
    Verify that the new MEA for Category "FlowFieldAnode" has only one instance in the database
    Verify that the new MEA for Category "AdditiveLayerAnode" has only one instance in the database
    Verify that the new MEA for Category "CataylstLayerCathode" has only one instance in the database
    Verify that the new MEA for Category "PTLCathode" has only one instance in the database
    Verify that the new MEA for Category "GDLCathode" has only one instance in the database
    Verify that the new MEA for Category "FlowFieldCathode" has only one instance in the database
    Verify that the new MEA for Category "AdditiveLayerCathode" has only one instance in the database
    Unaccess Bezzomate
    Save Changes from Initiation Page
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
    Access Bezzomate
    Navigate to the Category "State" from Bezzomate
    Verify that the new MEA for Category "MEA" has only one instance in the database
    Verify that the new MEA for Category "MEAConfiguration" has only one instance in the database
    Verify that the new MEA for Category "Membrane" has only one instance in the database
    Verify that the new MEA for Category "CatalystLayerAnode" has only one instance in the database
    Verify that the new MEA for Category "PTLAnode" has only one instance in the database
    Verify that the new MEA for Category "GDLAnode" has only one instance in the database
    Verify that the new MEA for Category "FlowFieldAnode" has only one instance in the database
    Verify that the new MEA for Category "AdditiveLayerAnode" has only one instance in the database
    Verify that the new MEA for Category "CataylstLayerCathode" has only one instance in the database
    Verify that the new MEA for Category "PTLCathode" has only one instance in the database
    Verify that the new MEA for Category "GDLCathode" has only one instance in the database
    Verify that the new MEA for Category "FlowFieldCathode" has only one instance in the database
    Verify that the new MEA for Category "AdditiveLayerCathode" has only one instance in the database
    Unaccess Bezzomate
    Save Changes from Initiation Page
    [Teardown]    Close Test for Sora Fuel