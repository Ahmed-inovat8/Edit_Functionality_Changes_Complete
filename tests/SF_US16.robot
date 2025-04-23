*** Settings ***
Resource          ../resources/low_level_keywords.resource
Resource          ../resources/medium_level_keywords.resource
Resource          ../resources/high_level_keywords.resource

*** Test Cases ***
US16 Testing Client Feedback Functionalities
    Login to Sora Fuel
    Create a New Project from Dashboard
    Enter all the following credentials in New Project Page "Ahmed Mazhar", "Client Feedback", "Ahmed"
    Verify that Date is already selected as the Current Date "17"
    Enter a New Project ID "91" from New Project Page and Save Changes
    Verify that the newly created Project with ID "P0091" is at the top
    Navigate to the MEA Page for "P0091"
    Initiate MEA
    Create New Experiment "1" from Select Experiment Page
    Start New Experiment "1" from Select Experiment Page and Select No for Standard Test Confirmation
    Create a New MEA UserInput ID "1" from Initiation Page
    Verify Date of Fabrication to be the same as Current Date "17"
    Verify MEA Super ID as "P0091-E0001-M0001" from Experiment Initiation Page
    Set Fabricated by to "Ahmed" from MEA Details on Initiation Page
    Verify that in both Anode and Cathode, the Catalyst Layer, the field Catalyst is not editable
    # Select the following Value "456456" for the "Membrane ID" from Experiment Initiation page
    Select the following Value "-1032ur09wu" for the "Catalyst Layer Anode ID" from Experiment Initiation page
    Select the following Value "456" for the "Catalyst Layer Cathode ID" from Experiment Initiation page
    Save Changes from Initiation Page
    Add Test Details "Test Station" from Testing Details Page with Value "DSV1"
    Verify there is only one instance of the Label "Anode Flow Rate (mL/min)" from Testing Details Page
    Verify there is only one instance of the Label "Cathode Flow Rate (mL/min)" from Testing Details Page
    Verify all Attributes from Anolyte/Catholyte are non-ediatble on Testing Details Page
    Navigate to Master Data Page
    From Master Data Page, Navigate to following Attribute: "Anolyte"
    Create New Master Data Attribute "New Anolyte"
    Verify from New Master Data Attribute that "Captured solution" has only two options "Yes" and "No"
    Cancel Out From Creating a New Attribute For Master Data
    From Master Data Page, Navigate to following Attribute: "Catholyte"
    Create New Master Data Attribute "New Catholyte"
    Verify from New Master Data Attribute that "Captured solution" has only two options "Yes" and "No"
    Cancel Out From Creating a New Attribute For Master Data
    From Master Data Page, Navigate to following Attribute: "Membrane"
    Create New Master Data Attribute "New Membrane"
    Verify from New Master Data Attribute that "Polarity" has only two options "Forward" and "Reverse"
    Verify from New Master Data Attribute that "Grid Location of Membrane" is not a dropdown but string
    Cancel Out From Creating a New Attribute For Master Data
    Navigate to Dashboard Page
    Navigate to the MEA Page for "P0091"
    From Project Details Page Verify the Category "Voltage (at 25 min)" with iterations "30"
    [Teardown]    Close all Tests for Sora Fuel