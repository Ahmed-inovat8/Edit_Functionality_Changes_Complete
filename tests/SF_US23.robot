*** Settings ***
Resource          ../resources/low_level_keywords.resource
Resource          ../resources/medium_level_keywords.resource
Resource          ../resources/high_level_keywords.resource

*** Test Cases ***
US23 Verifying the Hover Functionality for Project Dashboard, MEA Dashboard and Master Data Page 
    Login to Sora Fuel
    Hover over all Projects from Dashboard
    Navigate to Master Data Page
    From Master Data Page, Hover over the following Attribute: "Cell"
    From Master Data Page, Hover over the following Attribute: "Membrane"
    From Master Data Page, Hover over the following Attribute: "Catalyst Layer Anode"
    From Master Data Page, Hover over the following Attribute: "Catalyst Layer Cathode"
    From Master Data Page, Hover over the following Attribute: "Flow Field Anode"
    From Master Data Page, Hover over the following Attribute: "Flow Field Cathode"
    From Master Data Page, Hover over the following Attribute: "PTL Anode"
    From Master Data Page, Hover over the following Attribute: "GDL Anode"
    From Master Data Page, Hover over the following Attribute: "PTL Cathode"
    From Master Data Page, Hover over the following Attribute: "GDL Cathode"
    From Master Data Page, Hover over the following Attribute: "Additive Layer Anode"
    From Master Data Page, Hover over the following Attribute: "Additive Layer Cathode"
    From Master Data Page, Hover over the following Attribute: "Test Station"
    From Master Data Page, Hover over the following Attribute: "Anolyte"
    From Master Data Page, Hover over the following Attribute: "Catholyte"
    From Master Data Page, Hover over the following Attribute: "Component"
    From Master Data Page, Hover over the following Attribute: "Gas Chromatography"
    From Master Data Page, Hover over the following Attribute: "DC Power Supply" 
    From Master Data Page, Hover over the following Attribute: "Electrochemical Lab Potentiostat"
    Navigate to MEA Dashboard Page
    Hover over all MEAs from MEA Dashboard Page

    [Teardown]    Close Browser