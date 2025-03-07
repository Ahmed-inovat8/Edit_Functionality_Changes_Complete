*** Settings ***
Resource          ../resources/low_level_keywords.resource
Resource          ../resources/medium_level_keywords.resource
Resource          ../resources/high_level_keywords.resource

*** Test Cases ***
US17 Testing Final Client Feedback Functionalities
    Login to Sora Fuel
    From System Configurations Navigate to the option "User Managment"
    Navigate to Creating a New Account for a New user
    Create New Local User as User with Name: "Min" User: "Minhaj" Pass: "minhaj"
    Verify Password Error for not Fulfilling the Password Criteria
    Re-enter Password after error "minhajaa"
    Verify Password Error for not Fulfilling the Password Criteria
    Re-enter Password after error "Minhajaa"
    Verify Password Error for not Fulfilling the Password Criteria
    Re-enter Password after error "Minhaj1a"
    Verify Password Error for not Fulfilling the Password Criteria
    Re-enter Password after error "Min1@"
    Verify Password Error for not Fulfilling the Password Criteria
    Re-enter Password after error "Minhaj1@"
    Delete the User "Minhaj" from User Management Page
    
    Navigate to Master Data Page
    From Master Data Page, Navigate to following Attribute: "Membrane"
    Verify that there is no Text Filter Error
    From Master Data Page, Navigate to following Attribute: "Anolyte"
    Verify that there is no Text Filter Error
    From Master Data Page, Navigate to following Attribute: "Catholyte"
    Verify that there is no Text Filter Error
    From Master Data Page, Navigate to following Attribute: "Cell"
    Create New Master Data Attribute "New Cell"
    Enter ID "1234" for the Master Data Attribute "Cell"
    Save Changes from Creating a New Master Data Attribute
    Verify Validation Error Message
    Enter ID "654321" for the Master Data Attribute "Cell"
    Save Changes from Creating a New Master Data Attribute
    Delete the Master Data Entry for ID "654321"
    
    From Master Data Page, Navigate to following Attribute: "Flow Field Anode"
    Create New Master Data Attribute "New Flow Field Anode"
    Enter ID "1234" for the Master Data Attribute "Flow Field Anode"
    Save Changes from Creating a New Master Data Attribute
    Verify Validation Error Message
    Enter ID "654321" for the Master Data Attribute "Flow Field Anode"
    Save Changes from Creating a New Master Data Attribute
    Delete the Master Data Entry for ID "654321"

    From Master Data Page, Navigate to following Attribute: "Flow Field Cathode"
    Create New Master Data Attribute "New Flow Field Cathode"
    Enter ID "1234" for the Master Data Attribute "Flow Field Cathode"
    Save Changes from Creating a New Master Data Attribute
    Verify Validation Error Message
    Enter ID "654321" for the Master Data Attribute "Flow Field Cathode"
    Save Changes from Creating a New Master Data Attribute
    Delete the Master Data Entry for ID "654321"


    [Teardown]    Close Browser