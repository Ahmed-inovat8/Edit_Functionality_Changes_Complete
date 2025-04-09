*** Settings ***
Resource          ../resources/low_level_keywords.resource
Resource          ../resources/medium_level_keywords.resource
Resource          ../resources/high_level_keywords.resource

*** Test Cases ***
US22 Verifying the Functionality of Search 
    Login to Sora Fuel
    # Create a New Project from Dashboard
    # Enter all the following credentials in New Project Page "Automation Test", "Testing MEA Edit Functionality", "Ahmed"
    # Enter a New Project ID "19" from New Project Page and Save Changes
    # Navigate to the MEA Page for "P0019"
    # Initiate MEA
    # Create New Experiment "1" from Select Experiment Page
    # Start New Experiment "1" from Select Experiment Page
    # Create a New MEA UserInput ID "1" from Initiation Page
    # Verify MEA Super ID as "P0019-E0001-M0001" from Experiment Initiation Page
    # Set Fabricated by to "Ahmed" from MEA Details on Initiation Page
    # Select the following Value "-1032ur09wu" for the "Catalyst Layer Anode ID" from Experiment Initiation page
    # Select the following Value "456" for the "Catalyst Layer Cathode ID" from Experiment Initiation page
    # Save Changes from Initiation Page
    # Add Test Details "Test Station" from Testing Details Page with Value "DSV1"
    # Navigate to Upload DC Power Supply Results Page from Testing Details Page
    # Select Import type for Upload DC Power Supply to "Google Drive"
    # Enter Label "STD" in Upload DC Power Supply Results Page
    # Select Import type for Upload DC Power Supply to "Local"
    # Select Import type for Upload DC Power Supply to "Google Drive"
    # Browse from Google Drive
    # Navigate to "SoraFuel" from Google Drive
    # Select File with "3" iterations from Google Drive
    # Add file again if error with "3" iterations
    # Navigate to GC Files Page from Upload DC Power Supply Page
    # Enter Label "1" in GC Results Page via pressing Tab
    # Navigate to Upload GC Files tab
    # Browse Drive for the Run: "FID Run : 1"
    # Select File with "6" iterations from Google Drive
    # Browse Drive for the Run: "TCD Run :1"
    # Select File with "7" iterations from Google Drive
    # Set Time as "40" from GC File Upload
    # Save Changes from GC File Upload
    # If error select file with "6" and "7" iterations again for DC Power Supply with Time "40"
    # Navigate to PStat EIS Page from GC Files Page
    # Enter Label "P Stat Configuration" in PStat EIS Data
    # Browse drive to Sorafuel Folder
    # Select File with "4" iterations from Google Drive
    # Navigate to PStat LSV Page from PStat EIS Page
    # Browse drive to Sorafuel Folder
    # Select File with "5" iterations from Google Drive
    # Save and Close a Process
    Navigate to MEA Dashboard Page
    Navigate to Search from MEA Dashboard Page
    Input Search Filter "Super ID" as Value "P0019-E0001-M0001" from Search Page
    Select Search Filter "is MEA standard" as Value "Yes" from Search Page
    Select Search Filter "Created By" as Value "Ahmed" from Search Page
    Select Search Filter "Tested By" as Value "Ahmed" from Search Page
    Select Search Filter "CatalystLayerCathode ID" as Value "456" from Search Page
    Select Search Filter "Membrane ID" as Value "4343443" from Search Page
    Select Search Filter "Cell ID" as Value "SDC 5 - 022025" from Search Page
    # Input Search Filter "CatalystLayerAnode ID" as Value "-1032ur09w" from Search Page
    Search the Applied Filters from Search Page
    Verify the Result after applying the Search Filters via the Super ID "P0019-E0001-M0001"
    # [Teardown]    Close Test for Sora Fuel