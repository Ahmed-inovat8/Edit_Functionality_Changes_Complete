*** Settings ***
Resource          ../resources/low_level_keywords.resource
Resource          ../resources/medium_level_keywords.resource
Resource          ../resources/high_level_keywords.resource
Resource          ../resources/db_keywords.resource

*** Test Cases ***
US2 Testing 1 to Many Association of Project with Experiment
    Login to Sora Fuel while adding Bezzomate
    Create a New Project from Dashboard
    Enter all the credentials in New Project Page "Database testing", "Via Robot Framework", "2/18/2025", "Ahmed"
    Enter a New Project ID "9" from New Project Page and Save Changes
    Navigate to the MEA Page for "P0009"
    Initiate MEA
    Create Multiple Incremental Experiments "3" "1"
    Access Bezzomate
    Navigate to the Category "State" from Bezzomate
    Verify that the new Experiment for Category "Experiment" has the ID "E0001" in the database
    Verify that the new Experiment for Category "Experiment" has the ID "E0002" in the database
    Verify that the new Experiment for Category "Experiment" has the ID "E0003" in the database
    [Teardown]    Close all Tests for Sora Fuel

