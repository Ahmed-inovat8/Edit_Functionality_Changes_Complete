*** Settings ***
Resource          ../resources/low_level_keywords.resource
Resource          ../resources/medium_level_keywords.resource
Resource          ../resources/high_level_keywords.resource

*** Test Cases ***
US24 Verifying the Functionality of Custom Search Filter
    Login to Sora Fuel
    Navigate to Custom Search Filter from Dashboard Page
    From Custom Search Filter "Super ID" input Value "P0014-E0002-M0001" and verify the result "1 to 1 of 1"

    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Cell size" input Value "5" and verify the result "1 to 20 of 35"

    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Cell Gaskets" input Value "Viton" and verify the result "1 to 1 of 1"
    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Cell Gaskets" input Value "PVC" and verify the result "1 to 20 of 36"


    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Membrane ID" DropDown input Value "2-1-099 T1" and verify the result "1 to 1 of 1"
    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Membrane ID" DropDown input Value "2-1-099 S3" and verify the result "1 to 3 of 3"
    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Membrane ID" DropDown input Value "12" and verify the result "1 to 4 of 4"
    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Membrane ID" DropDown input Value "4343443" and verify the result "1 to 20 of 29"

    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Membrane Manufactured by" input Value "Sora Fuel" and verify the result "1 to 20 of 37"
    
    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Membrane AEM" input Value "PiperION" and verify the result "1 to 3 of 3"

    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Membrane CEM" input Value "FKB 130" and verify the result "1 to 3 of 3"

    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Catalyst Layer Anode ID" DropDown input Value "-1032ur09wu" and verify the result "1 to 7 of 7"
    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Catalyst Layer Anode ID" DropDown input Value "Standard" and verify the result "1 to 13 of 13"
    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Catalyst Layer Anode ID" DropDown input Value "Std Ni Foam" and verify the result "1 to 11 of 11"
    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Catalyst Layer Anode ID" DropDown input Value "kasklal" and verify the result "1 to 2 of 2"
    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Catalyst Layer Anode ID" DropDown input Value "2222222" and verify the result "1 to 3 of 3"
    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Catalyst Layer Anode ID" DropDown input Value "1234556" and verify the result "1 to 1 of 1"
    
    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Flow Field ID" DropDown input Value "SFA1" and verify the result "1 to 3 of 3"
    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Flow Field ID" DropDown input Value "123456" and verify the result "1 to 1 of 1"
    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Flow Field ID" DropDown input Value "774488" and verify the result "1 to 1 of 1"
    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Flow Field ID" DropDown input Value "Mystery" and verify the result "1 to 20 of 24"
    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Flow Field ID" DropDown input Value "123455" and verify the result "1 to 8 of 8"

    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Aspect Ratio" input Value "0.00" and verify the result "1 to 20 of 37"

    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Channel Depth(mm)" input Value "0.85" and verify the result "1 to 20 of 37"

    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Catalyst Layer Cathode ID" DropDown input Value "2-2-100" and verify the result "1 to 3 of 3"
    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Catalyst Layer Cathode ID" DropDown input Value "2-2-056" and verify the result "1 to 11 of 11"
    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Catalyst Layer Cathode ID" DropDown input Value "456" and verify the result "1 to 4 of 4"
    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Catalyst Layer Cathode ID" DropDown input Value "2-2-0104E" and verify the result "1 to 7 of 7"
    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Catalyst Layer Cathode ID" DropDown input Value "2-2-103" and verify the result "1 to 6 of 6"
    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Catalyst Layer Cathode ID" DropDown input Value "jksajka" and verify the result "1 to 2 of 2"
    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Catalyst Layer Cathode ID" DropDown input Value "2222222" and verify the result "1 to 4 of 4"

    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Deposition Method" input Value "Dip Coating" and verify the result "1 to 20 of 33"
    Reset and then Navigate to Custom Search Filter from MEA Dashboard Page
    From Custom Search Filter "Deposition Method" input Value "22222222" and verify the result "1 to 4 of 4"


    [Teardown]    Close Browser