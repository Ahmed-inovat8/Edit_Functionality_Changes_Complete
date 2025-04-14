*** Settings ***
Resource          ../resources/low_level_keywords.resource
Resource          ../resources/medium_level_keywords.resource
Resource          ../resources/high_level_keywords.resource

*** Test Cases ***
US14 Testing IDs and Save Functionality from Master Data
    Login to Sora Fuel
    Navigate to Master Data Page

    From Master Data Page, Navigate to following Attribute: "Cell"
    Create New Master Data Attribute "New Cell"
    Enter ID "1234" for the Master Data Attribute "Cell"
    Save Changes from Creating a New Master Data Attribute
    Verify Validation Error Message
    Enter ID "654321" for the Master Data Attribute "Cell"
    Save Changes from Creating a New Master Data Attribute
    Delete the Master Data Entry for ID "654321"


    From Master Data Page, Navigate to following Attribute: "Membrane"
    Create New Master Data Attribute "New Membrane"
    Enter ID "1234" for the Master Data Attribute "Membrane ID"
    Save Changes from Creating a New Master Data Attribute
    Verify Validation Error Message
    Enter ID "7654321" for the Master Data Attribute "Membrane"
    For Dropdowns Enter value "Forward" for Element "Polarity" for the Master Data Attribute "Membrane"
    Enter value "654321" for Element "Parent Membrane ID" for the Master Data Attribute "Membrane"
    Enter value "123" for Element "CEM" for the Master Data Attribute "Membrane"
    Enter value "1234" for Element "AEM" for the Master Data Attribute "Membrane"
    Enter value "1234" for Element "Grid location" for the Master Data Attribute "Membrane"
    Save Changes from Creating a New Master Data Attribute
    Scroll To Right Most Side of the Page
    Delete the Master Data Entry for ID "7654321"



    From Master Data Page, Navigate to following Attribute: "Catalyst Layer Anode"
    Create New Master Data Attribute "Catalyst Layer Anode"
    Enter ID "1234" for the Master Data Attribute "Catalyst Layer Anode ID"
    Save Changes from Creating a New Master Data Attribute
    Verify Validation Error Message
    Enter ID "7654324" for the Master Data Attribute "Catalyst Layer Anode ID"
    Enter value "Ahmed" for Element Manufactured by for the Master Data Attribute "Catalyst Layer Anode"
    Enter value "654321" for Element "Mixing Equipment" for the Master Data Attribute "Catalyst Layer Anode"
    Enter value "123" for Element "Mixing Solvent" for the Master Data Attribute "Catalyst Layer Anode"
    Enter value "1234" for Element "Deposition Method" for the Master Data Attribute "Catalyst Layer Anode"
    Enter value "1234" for Element "Deposition by" for the Master Data Attribute "Catalyst Layer Anode"
    Enter value "1234" for Element "Deposition Speed" for the Master Data Attribute "Catalyst Layer Anode"
    Save Changes from Creating a New Master Data Attribute
    Scroll To Right Most Side of the Page
    Delete the Master Data Entry for ID "7654324"

    

    From Master Data Page, Navigate to following Attribute: "Catalyst Layer Cathode"
    Create New Master Data Attribute "New Cataylst layer cathode"
    Enter ID "2255" for the Master Data Attribute "Catalyst Layer Cathode ID"
    Save Changes from Creating a New Master Data Attribute
    Verify Validation Error Message
    Enter ID "7654321" for the Master Data Attribute "Catalyst Layer Cathode ID"
    Enter value "Ahmed" for Element Manufactured by for the Master Data Attribute "Catalyst Layer Cathode"
    Enter value "Ammad" for Element Deposition by for the Master Data Attribute Catalyst Layer Cathode
    Save Changes from Creating a New Master Data Attribute
    Scroll To Delete for Master Data
    Delete the Master Data Entry for ID "7654321"




    From Master Data Page, Navigate to following Attribute: "Flow Field Anode"
    Create New Master Data Attribute "New Flow Field Anode"
    Enter ID "1234" for the Master Data Attribute "Flow Field Anode"
    Save Changes from Creating a New Master Data Attribute
    Verify Validation Error Message
    Enter ID "654321" for the Master Data Attribute "Flow Field Anode"
    Save Changes from Creating a New Master Data Attribute
    Scroll To Delete for Master Data
    Delete the Master Data Entry for ID "654321"

    From Master Data Page, Navigate to following Attribute: "Flow Field Cathode"
    Create New Master Data Attribute "New Flow Field Cathode"
    Enter ID "1234" for the Master Data Attribute "Flow Field Cathode"
    Save Changes from Creating a New Master Data Attribute
    Verify Validation Error Message
    Enter ID "654321" for the Master Data Attribute "Flow Field Cathode"
    Save Changes from Creating a New Master Data Attribute
    Scroll To Delete for Master Data
    Delete the Master Data Entry for ID "654321"


    
    From Master Data Page, Navigate to following Attribute: "PTL Anode"
    Create New Master Data Attribute "New PTL anode"
    Enter ID "12" for the Master Data Attribute "ID"
    Save Changes from Creating a New Master Data Attribute
    Verify Validation Error Message
    Enter ID "2255" for the Master Data Attribute "ID"
    Save Changes from Creating a New Master Data Attribute
    Delete the Master Data Entry for ID "2255"


    From Master Data Page, Navigate to following Attribute: "GDL Anode"
    Create New Master Data Attribute "New GDL Anode"
    Enter ID "12" for the Master Data Attribute "ID"
    Save Changes from Creating a New Master Data Attribute
    Verify Validation Error Message
    Enter ID "2255" for the Master Data Attribute "ID"
    Enter value "1234" for Element "Manufacturer" for the Master Data Attribute "GDL Anode"
    Save Changes from Creating a New Master Data Attribute
    Delete the Master Data Entry for ID "2255"


    From Master Data Page, Navigate to following Attribute: "PTL Cathode"
    Create New Master Data Attribute "New PTL cathode"
    Enter ID "12" for the Master Data Attribute "ID"
    Save Changes from Creating a New Master Data Attribute
    Verify Validation Error Message
    Enter ID "2255" for the Master Data Attribute "ID"
    Enter value "1234" for Element "Manufacturer" for the Master Data Attribute "PTL Cathode"
    Save Changes from Creating a New Master Data Attribute
    Delete the Master Data Entry for ID "2255"


    From Master Data Page, Navigate to following Attribute: "GDL Cathode"
    Create New Master Data Attribute "New GDL Cathode"
    Enter ID "12" for the Master Data Attribute "ID"
    Save Changes from Creating a New Master Data Attribute
    Verify Validation Error Message
    Enter ID "2255" for the Master Data Attribute "ID"
    Save Changes from Creating a New Master Data Attribute
    Delete the Master Data Entry for ID "2255"


    From Master Data Page, Navigate to following Attribute: "Additive Layer Anode"
    Create New Master Data Attribute "New Additive layer anode"
    Enter ID "12" for the Master Data Attribute "ID"
    Save Changes from Creating a New Master Data Attribute
    Verify Validation Error Message
    Enter ID "2255" for the Master Data Attribute "ID"
    Enter value "1234" for Element "Location" for the Master Data Attribute "Additive Layer anode"
    Enter value "1234" for Element "Composition" for the Master Data Attribute "Additive Layer anode"
    Enter value "1234" for Element "Cure time (min)" for the Master Data Attribute "Additive Layer anode"
    Enter value "1234" for Element "Quantity (μl)" for the Master Data Attribute "Additive Layer anode"
    Save Changes from Creating a New Master Data Attribute
    Delete the Master Data Entry for ID "2255"


    From Master Data Page, Navigate to following Attribute: "Additive Layer Cathode"
    Create New Master Data Attribute "New Additive layer cathode"
    Enter ID "12" for the Master Data Attribute "ID"
    Save Changes from Creating a New Master Data Attribute
    Verify Validation Error Message
    Enter ID "2255" for the Master Data Attribute "ID"
    Save Changes from Creating a New Master Data Attribute
    Delete the Master Data Entry for ID "2255"


    From Master Data Page, Navigate to following Attribute: "Test Station"
    Create New Master Data Attribute "New Test station"
    Enter value "Anything" for Element "Name" for the Master Data Attribute "Add/Edit Test Station"
    Save Changes from Creating a New Master Data Attribute
    Delete the Master Data Entry for Name "Anything"



    From Master Data Page, Navigate to following Attribute: "Anolyte"
    Create New Master Data Attribute "New Anolyte"
    Enter ID "12" for the Master Data Attribute "ID"
    Save Changes from Creating a New Master Data Attribute
    Verify Validation Error Message
    Enter ID "2255" for the Master Data Attribute "ID"
    For Dropdowns Enter value "Yes" for Element "Captured solution" for the Master Data Attribute "Anolyte"
    Enter value "K2CO3 3 M" for Element Components for the Master Data Attribute "Anolyte"
    Enter value "123" for Element "Manufacturer" for the Master Data Attribute "Anolyte"
    Save Changes from Creating a New Master Data Attribute
    Delete the Master Data Entry for ID "2255"


    From Master Data Page, Navigate to following Attribute: "Catholyte"
    Create New Master Data Attribute "New Catholyte"
    Enter ID "12" for the Master Data Attribute "ID"
    Save Changes from Creating a New Master Data Attribute
    Verify Validation Error Message
    Enter ID "2255" for the Master Data Attribute "ID"
    Enter value "K2CO3 3 M" for Element Components for the Master Data Attribute "Catholyte"    
    Enter value "123" for Element "Manufacturer" for the Master Data Attribute "Catholyte"
    Save Changes from Creating a New Master Data Attribute
    Delete the Master Data Entry for ID "2255"


    From Master Data Page, Navigate to following Attribute: "Component"
    Create New Master Data Attribute "New Component"
    For Dropdowns Enter value "NaOH" for Element "Chemical" for the Master Data Attribute "Edit Component"
    Save Changes from Creating a New Master Data Attribute
    Delete the Master Data Entry for Name "NaOH"


    From Master Data Page, Navigate to following Attribute: "Gas Chromatography"
    Create New Master Data Attribute "New GC configuration"
    Enter value "SomethingAnything" for Element "Label" for the Master Data Attribute "Edit GC Configuration"
    Enter value "2255" for Element "Model" for the Master Data Attribute "Edit GC Configuration"
    Enter value "12" for Element "Lab id" for the Master Data Attribute "Edit GC Configuration"
    Save Changes from Creating a New Master Data Attribute
    Delete the Master Data Entry for Label "SomethingAnything"

    
    From Master Data Page, Navigate to following Attribute: "DC Power Supply"
    Create New Master Data Attribute "New DC power supply configuration"
    Enter value "SomethingAnything" for Element "Label" for the Master Data Attribute "Edit DC Power Supply"
    Save Changes from Creating a New Master Data Attribute
    Delete the Master Data Entry for Name "SomethingAnything"
    
    
    From Master Data Page, Navigate to following Attribute: "Electrochemical Lab Potentiostat"
    Create New Master Data Attribute "New EC lab P stat configuration"
    Enter value "SomethingAnything" for Element "Label" for the Master Data Attribute "Edit EC lab P stat configuration"
    Enter value "1234" for Element "Model" for the Master Data Attribute "Edit EC lab P stat configuration"
    Save Changes from Creating a New Master Data Attribute
    Delete the Master Data Entry for Label "SomethingAnything"   

   [Teardown]    Close Browser