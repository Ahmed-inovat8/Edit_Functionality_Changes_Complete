*** Settings ***
Resource          ../resources/low_level_keywords.resource
Resource          ../resources/medium_level_keywords.resource
Resource          ../resources/high_level_keywords.resource

*** Test Cases ***
US15 Testing Cancel Functionality from Master Data
    Login to Sora Fuel
    Navigate to Master Data Page

    From Master Data Page, Navigate to following Attribute: "Cell"
    Create New Master Data Attribute "New Cell"
    Cancel Out From Creating a New Attribute For Master Data


    From Master Data Page, Navigate to following Attribute: "Membrane"
    Create New Master Data Attribute "New Membrane"
    Cancel Out From Creating a New Attribute For Master Data



    From Master Data Page, Navigate to following Attribute: "Catalyst Layer Anode"
    Create New Master Data Attribute "Catalyst Layer Anode"
    Cancel Out From Creating a New Attribute For Master Data

    

    From Master Data Page, Navigate to following Attribute: "Catalyst Layer Cathode"
    Create New Master Data Attribute "New Cataylst layer cathode"
    Cancel Out From Creating a New Attribute For Master Data




    From Master Data Page, Navigate to following Attribute: "Flow Field Anode"
    Create New Master Data Attribute "New Flow Field Anode"
    Cancel Out From Creating a New Attribute For Master Data

    From Master Data Page, Navigate to following Attribute: "Flow Field Cathode"
    Create New Master Data Attribute "New Flow Field Cathode"
    Cancel Out From Creating a New Attribute For Master Data


    
    From Master Data Page, Navigate to following Attribute: "PTL Anode"
    Create New Master Data Attribute "New PTL anode"
    Cancel Out From Creating a New Attribute For Master Data


    From Master Data Page, Navigate to following Attribute: "GDL Anode"
    Create New Master Data Attribute "New GDL Anode"
    Cancel Out From Creating a New Attribute For Master Data

    From Master Data Page, Navigate to following Attribute: "PTL Cathode"
    Create New Master Data Attribute "New PTL cathode"
    Cancel Out From Creating a New Attribute For Master Data


    From Master Data Page, Navigate to following Attribute: "GDL Cathode"
    Create New Master Data Attribute "New GDL Cathode"
    Cancel Out From Creating a New Attribute For Master Data



    From Master Data Page, Navigate to following Attribute: "Additive Layer Anode"
    Create New Master Data Attribute "New Additive layer anode"
    Cancel Out From Creating a New Attribute For Master Data



    From Master Data Page, Navigate to following Attribute: "Additive Layer Cathode"
    Create New Master Data Attribute "New Additive layer cathode"
    Cancel Out From Creating a New Attribute For Master Data


    From Master Data Page, Navigate to following Attribute: "Test Station"
    Create New Master Data Attribute "New Test station"
    Cancel Out From Creating a New Attribute For Master Data



    From Master Data Page, Navigate to following Attribute: "Anolyte"
    Create New Master Data Attribute "New Anolyte"
    Cancel Out From Creating a New Attribute For Master Data



    From Master Data Page, Navigate to following Attribute: "Catholyte"
    Create New Master Data Attribute "New Catholyte"
    Cancel Out From Creating a New Attribute For Master Data


    From Master Data Page, Navigate to following Attribute: "Component"
    Create New Master Data Attribute "New Component"
    Cancel Out From Creating a New Attribute For Master Data


    From Master Data Page, Navigate to following Attribute: "Gas Chromatography"
    Create New Master Data Attribute "New GC configuration"
    Cancel Out From Creating a New Attribute For Master Data

    
    From Master Data Page, Navigate to following Attribute: "DC Power Supply"
    Create New Master Data Attribute "New DC power supply configuration"
    Cancel Out From Creating a New Attribute For Master Data    
    
    From Master Data Page, Navigate to following Attribute: "Electrochemical Lab Potentiostat"
    Create New Master Data Attribute "New EC lab P stat configuration"
    Cancel Out From Creating a New Attribute For Master Data

    

   [Teardown]    Close Browser