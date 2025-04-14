*** Settings ***
Resource          ../resources/low_level_keywords.resource
Resource          ../resources/medium_level_keywords.resource
Resource          ../resources/high_level_keywords.resource
Resource    ../resources/db_keywords.resource

*** Test Cases ***
US6 MEA to MEA Configuration to Master Data/ ID Verification
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
    Verify that the new MEA for Category "MEA" has the ID "P0009-E0001-M0001" in the database
    Verify that the new MEA for Category "Membrane" has the ID "4343443" in the database
    Verify that the new MEA for Category Catalyst Layer "CatalystLayerAnode" has the ID "-1032ur09wu" in the database
    Verify that the new MEA for Category Catalyst Layer "PTLAnode" has the ID "Ni Foam" in the database
    Verify that the new MEA for Category Catalyst Layer "GDLAnode" has the ID "none" in the database
    Verify that the new MEA for Category Flow Field "FlowFieldAnode" has the ID "123455" in the database
    Verify that the new MEA for Category Catalyst Layer "AdditiveLayerAnode" has the ID "12345" in the database    
    Verify that the new MEA for Category Catalyst Layer "CataylstLayerCathode" has the ID "456" in the database
    Verify that the new MEA for Category Catalyst Layer "PTLCathode" has the ID "none" in the database
    Verify that the new MEA for Category Catalyst Layer "GDLCathode" has the ID "E20H" in the database
    Verify that the new MEA for Category Flow Field "FlowFieldCathode" has the ID "Mystery" in the database
    Verify that the new MEA for Category Catalyst Layer "AdditiveLayerCathode" has the ID "Naf-1" in the database    
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
    Verify that the new MEA for Category "MEA" has the ID "P0009-E0001-M0002" in the database
    Verify that the new MEA for Category "Membrane" has the ID "4343443" in the database
    Verify that the new MEA for Category Catalyst Layer "CatalystLayerAnode" has the ID "-1032ur09wu" in the database
    Verify that the new MEA for Category Catalyst Layer "PTLAnode" has the ID "Ni Foam" in the database
    Verify that the new MEA for Category Catalyst Layer "GDLAnode" has the ID "none" in the database
    Verify that the new MEA for Category Flow Field "FlowFieldAnode" has the ID "123455" in the database
    Verify that the new MEA for Category Catalyst Layer "AdditiveLayerAnode" has the ID "12345" in the database    
    Verify that the new MEA for Category Catalyst Layer "CataylstLayerCathode" has the ID "456" in the database
    Verify that the new MEA for Category Catalyst Layer "PTLCathode" has the ID "none" in the database
    Verify that the new MEA for Category Catalyst Layer "GDLCathode" has the ID "E20H" in the database
    Verify that the new MEA for Category Flow Field "FlowFieldCathode" has the ID "Mystery" in the database
    Verify that the new MEA for Category Catalyst Layer "AdditiveLayerCathode" has the ID "Naf-1" in the database
    Unaccess Bezzomate
    Save Changes from Initiation Page
    [Teardown]    Close Test for Sora Fuel