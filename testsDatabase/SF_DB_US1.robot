*** Settings ***
Resource          ../resources/low_level_keywords.resource
Resource          ../resources/medium_level_keywords.resource
Resource          ../resources/high_level_keywords.resource
Resource          ../resources/db_keywords.resource

*** Test Cases ***
US1 Testing 1 to 1 Association of Project with Project Entry
    Login to Sora Fuel while adding Bezzomate
    Create a New Project from Dashboard
    Enter all the credentials in New Project Page "Database testing", "Via Robot Framework", "2/18/2025", "Ahmed"
    Enter a New Project ID "9" from New Project Page and Save Changes
    Refresh Feed
    Unaccess Bezzomate
    Navigate to the Category "State" from Bezzomate
    Verify that the newly created Project by Owner "Ahmed" has only one entry with "12" scrolls
    Unaccess Bezzomate
    Delete a Project from Dashboard
    Create a New Project from Dashboard
    Enter all the credentials in New Project Page "Database testing", "Via Robot Framework", "2/19/2025", "Ahmed"
    Enter a New Project ID "8" from New Project Page and Save Changes
    Refresh Feed
    Unaccess Bezzomate
    Navigate to the Category "State" from Bezzomate
    Verify that the newly created Project by Owner "Ahmed" has only one entry with "12" scrolls
    Unaccess Bezzomate
    [Teardown]    Close Test for Sora Fuel

