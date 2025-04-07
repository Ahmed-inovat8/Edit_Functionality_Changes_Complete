*** Settings ***
Resource          ../resources/low_level_keywords.resource
Resource          ../resources/medium_level_keywords.resource
Resource          ../resources/high_level_keywords.resource

*** Test Cases ***
US11 Testing whether Google Drive Remembers the Folder and Testing Reset Button
    Login to Sora Fuel
    Create a New Project from Dashboard
    Enter all the credentials in New Project Page "Automation Test", "Testing via Robot Framework", "2/18/2025", "Ahmed"
    Enter a New Project ID "9" from New Project Page and Save Changes
    Navigate to the MEA Page for "P0009"
    Initiate MEA
    Create New Experiment "1" from Select Experiment Page
    Start New Experiment "1" from Select Experiment Page
    Create a New MEA UserInput ID "1" from Initiation Page
    Add Date of Fabrication "19" from MEA Details on Initiation Page
    Verify MEA Super ID as "P0009-E0001-M0001" from Experiment Initiation Page
    Set Fabricated by to "Ahmed" from MEA Details on Initiation Page
    Select the following Value "-1032ur09wu" for the "Catalyst Layer Anode ID" from Experiment Initiation page
    Select the following Value "456" for the "Catalyst Layer Cathode ID" from Experiment Initiation page
    Save Changes from Initiation Page
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
    Enter Label "1" in GC Results Page via pressing Tab
    Navigate to Upload GC Files tab
    Browse Drive for the Run: "FID Run : 1"
    Select File with "6" iterations from Google Drive
    Browse Drive for the Run: "TCD Run :1"
    Select File with "7" iterations from Google Drive
    Set Time as "40" from GC File Upload
    Save Changes from GC File Upload
    If error select file with "6" and "7" iterations again for DC Power Supply with Time "40"
    Save Changes from GC File Upload
    Navigate to PStat EIS Page from GC Files Page
    Enter Label "P Stat Configuration" in PStat EIS Data
    Browse drive to Sorafuel Folder
    Select File with "10" iterations on data template from Google Drive
    Navigate to PStat LSV Page from PStat EIS Page
    Browse drive to Sorafuel Folder
    Select File with "15" iterations from Google Drive
    Save and Close a Process
    
    [Teardown]    Close all Tests for Sora Fuel