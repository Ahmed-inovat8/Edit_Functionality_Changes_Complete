*** Settings ***
Resource          ../resources/low_level_keywords.resource
Resource          ../resources/medium_level_keywords.resource
Resource          ../resources/high_level_keywords.resource
Resource    ../resources/db_keywords.resource

*** Test Cases ***
US11 Verifying Edit Functionality for Deleting and Uploading Files from Database
    Login to Sora Fuel while adding Bezzomate
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
    Access Bezzomate
    Navigate to the Category "Database" from Bezzomate
    Verify that the readings for "DCPowerSupplyReading" are "181261"
    Verify that the readings for "TCD" are "36"
    Verify that the readings for "FID" are "72"
    Verify that the readings for "EIS" are "1397"
    Verify that the readings for "LSV" are "22479"
    Unaccess Bezzomate
    Navigate to MEA Dashboard Page
    Navigate to the Edit Functionality for the MEA "P0019-E0001-M0001" from MEA Dashboard Page
    Delete the Initial File/Files for "GC" from the MEA Edit Page
    Delete the File/Files for "PS" from the MEA Edit Page
    Delete the File/Files for "EIS" from the MEA Edit Page
    Delete the File/Files for "LSV" from the MEA Edit Page
    Refresh Feed
    Access Bezzomate
    Navigate to the Category "Database" from Bezzomate
    Verify that the readings for "DCPowerSupplyReading" are "177948"
    Verify that the readings for "TCD" are "35"
    Verify that the readings for "FID" are "70"
    Verify that the readings for "EIS" are "1327"
    Verify that the readings for "LSV" are "21554"
    Unaccess Bezzomate
    Navigate to MEA Dashboard Page
    Navigate to the Edit Functionality for the MEA "P0019-E0001-M0001" from MEA Dashboard Page
    Upload a new File for Intrument PS with Iterations "3"
    For Instrument GC While Remembering Folder upload a new File with Iterations "6" "7"
    For Instrument EIS While Remembering Folder upload a new File with Iterations "4"
    For Instrument LSV While Remembering Folder upload a new File with Iterations "5"
    Save and Close a Process from MEA Edit Page
    Refresh Feed
    Access Bezzomate
    Navigate to the Category "Database" from Bezzomate
    Verify that the readings for "DCPowerSupplyReading" are "181261"
    Verify that the readings for "TCD" are "36"
    Verify that the readings for "FID" are "72"
    Verify that the readings for "EIS" are "1397"
    Verify that the readings for "LSV" are "22479"
    Unaccess Bezzomate
    
    [Teardown]    Close Browser