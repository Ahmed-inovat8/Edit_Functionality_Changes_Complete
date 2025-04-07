*** Settings ***
Library           SeleniumLibrary
Resource          low_level_keywords.resource
# Library           locators.py

*** Keywords ***

Wait For Locator
    [Arguments]    ${locator}    ${timeout}=40
    [Documentation]    Verifies that element ``locator`` is found on the current page.
    ...
    ...    == Description: ==
    ...    Fails if ``timeout`` expires before the element is visible.
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar
    ...
    ...    *Examples:*
    ...    | Wait For Locator | ${login_page.username} |
    ...    | Wait For Locator | ${login_page.username} | 20 |
    [Tags]    DONE
    Wait Until Element Is Visible    ${locator}    timeout=${timeout}

Wait For Composed Locator
    [Arguments]    ${locator}    ${text}    ${timeout}=50
    [Documentation]    Verifies that element ``composed`` locator is found on the current page.
    ...
    ...    == Description: ==
    ...    Fails if ``timeout`` expires before the element is visible.
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar
    ...
    ...    *Examples:*
    ...    | Wait For Composed Locator | ${login_page.username} | Username |
    ...    | Wait For Composed Locator | ${login_page.username} | Username | 20 |
    [Tags]    DONE
    ${composed}=    Evaluate    '${locator}' % '${text}'
    Wait For Locator    ${composed}    timeout=${timeout}

Click On Locator
    [Arguments]    ${locator}
    [Documentation]    Click the element identified by ``locator``.
    ...
    ...    == Description: ==
    ...    Wait the element to be visible and then click it
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar
    ...
    ...    *Examples:*
    ...    | Click On Locator | ${auth_page.submit} |
    [Tags]    DONE
    Wait For Locator    ${locator}
    Click Element    ${locator}


Click On Composed Locator
    [Arguments]    ${locator}    ${text}
    [Documentation]    Click the element identified by ``locator`` and its text.
    ...
    ...    == Description: ==
    ...    Wait the element to be visible and then click it
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar
    ...
    ...    *Examples:*
    ...    | Click On Composed Locator | ${auth_page.submit} | Submit |
    [Tags]    DONE
    ${composed}=    Evaluate    '${locator}' % '${text}'
    Click On Locator    ${composed}
    RETURN    ${composed}

    
Composed Locator
    [Arguments]    ${locator}    ${text}
    [Documentation]    Provides a Composed Locator
    ...
    ...    == Description: ==
    ...    Provides a Composed Locator
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar
    ...
    ...    *Examples:*
    ...    | Click On Composed Locator | ${auth_page.submit} | Submit |
    [Tags]    DONE
    ${composed}=    Evaluate    '${locator}' % '${text}'
    RETURN    ${composed}

Send Keys to Composed Locator
    [Arguments]    ${locator}    ${element_required_to_compose}     ${text_to_enter}
        [Documentation]    Enter input in the element identified by ``locator`` and its text.
        ...
        ...    == Description: ==
        ...    First create the composed locator and then enter input in it
        ...
        ...    == Author: ==
        ...    Ahmed Mazhar
        ...
        ...    *Examples:*
        ...    | Send Keys to Composed Locator | ${locator} | ${element_required_to_compose} | ${text_to_enter} |
        [Tags]    DONE
        ${composed}=    Evaluate    '${locator}' % '${element_required_to_compose}'
        Send Keys To Locator   ${composed}    ${text_to_enter}   

Wait For Composed Locator made with two inputs
    [Arguments]    ${locator}    ${text1}     ${text2}    ${timeout}=40
    [Documentation]    Click the element identified by ``locator`` and its text.
    ...
    ...    == Description: ==
    ...    Wait the element to be visible and then click it
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar
    ...
    ...    *Examples:*
    ...    | Wait For Composed Locator made with two inputs | ${auth_page.submit} | Name | Submit |
    [Tags]    DONE
    ${composed}=    Evaluate    '${locator}' % ('${text1}', '${text2}')
    Wait For Locator    ${composed}    timeout=${timeout}
    RETURN    ${composed}

Write On Locator
    [Arguments]    ${locator}    ${text}
    [Documentation]    Click the element identified by ``locator``.
    ...
    ...    == Description: ==
    ...    Wait the element to be visible and then types the given text into the text field identified by locator.
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar
    ...
    ...    *Examples:*
    ...    | Write On Locator | ${auth_page.username} | Adolfo Dias |
    [Tags]    DONE
    Wait For Locator    ${locator}
    Input Text    ${locator}    ${text}

Send Keys To Locator
    [Arguments]    ${locator}    ${text}
    [Documentation]    Simulates the user pressing key(s) to an element or on the active browser.
    ...
    ...    == Description: ==
    ...    Wait the element to be visible, then clear it, and then send keys to the field identified by locator.
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar
    ...
    ...    *Examples:*
    ...    | Send Keys To Locator | ${auth_page.username} | Adolfo Dias |
    [Tags]    DONE
    Wait For Locator    ${locator}
    Clear Element Text    ${locator}
    Press Keys    ${locator}    ${text}

Get Text From Locator
    [Arguments]    ${locator}
    [Documentation]    Returns the text value of the element identified by locator.
    ...
    ...    == Description: ==
    ...    Wait the element to be visible and then get and return the text value of the element identified by locator.
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar
    ...
    ...    *Examples:*
    ...    | Get Text From Locator | ${auth_page.username} |
    [Tags]    DONE
    Wait For Locator    ${locator}
    ${text}=    Get Text    ${locator}
    RETURN    ${text}

Get Text From Composed Locator
    [Arguments]    ${locator}    ${text}
    [Documentation]    Returns the text value of the element identified by locator and its text.
    ...
    ...    == Description: ==
    ...    Wait the element to be visible and then get and return the text value of the element identified by locator and its text.
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar
    ...
    ...    *Examples:*
    ...    | Get Text From Composed Locator | ${auth_page.username} | Username |
    [Tags]    DONE
    ${composed}=    Evaluate    '${locator}' % '${text}'
    ${text}=    Get Text From Locator    ${composed}
    RETURN    ${text}

Get Value From Locator
    [Arguments]    ${locator}
    [Documentation]    Returns the value attribute of the element identified by locator.
    ...
    ...    == Description: ==
    ...    Wait the element to be visible and then get and return the value attribute of the element identified by locator.
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar
    ...
    ...    *Examples:*
    ...    | ${text}= | Get Value From Locator | ${auth_page.username} |
    [Tags]    DONE
    Wait For Locator    ${locator}
    ${text}=    Get Value    ${locator}
    RETURN    ${text}

Compare Text From Locator
    [Arguments]    ${locator}    ${expected}
    [Documentation]    Compare text value of an element with an ``expected`` value
    ...
    ...    == Description: ==
    ...    Fails if the text value of the ``locator`` is not equal to the ``expected`` value.
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar
    ...
    ...    *Examples:*
    ...    | Compare Text From Locator | ${auth_page.username} | Adolfo Dias |
    [Tags]    DONE
    ${text}=    Get Text From Locator    ${locator}
    Should Be Equal As Strings    ${text}    ${expected}

Wait To Load
    [Arguments]    ${locator}
    [Documentation]    Wait a element is visible in the page and then wait it to be non visible
    ...
    ...    == Description: ==
    ...    Wait the element to be visible and then wait it to be non visible
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar
    ...
    ...    *Examples:*
    ...    | Wait To Load | ${molecule_page.loading} |
    [Tags]    DONE
    Wait Until Element Is Not Visible    ${locator}    timeout=150

Scroll To End Of Page
    [Documentation]    Scrolls to the bottom of the page.
    ...
    ...    == Description: ==
    ...    Executes JavaScript to scroll the page to the bottom.
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar
    ...
    ...    *Examples:*
    ...    | Scroll To End Of Page |
    [Tags]    DONE
    Press Keys    NONE    END
    Sleep    1s



Scroll To Right Most Side of the Page
    [Documentation]    Scroll To Right Most Side of the Page
    ...
    ...    == Description: ==
    ...    Scroll To Right Most Side of the Page
    ...
    ...    == Author: ==
    ...    Ahmed Mazhar
    ...
    ...    
    [Tags]    DONE
    
    
    
    FOR    ${index}    IN RANGE    70
        Press Keys    NONE    ARROW_RIGHT
        Sleep    0.05
    END
    Sleep    1s