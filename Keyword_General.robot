*** Keywords ***
Verify Create Success
    [Arguments]    ${a}    ${b}
    ${x}=    Evaluate    ${b}-${a}
    Should Be True    ${x} == 1

Verify Update Success
    [Arguments]    ${locator}    ${expected}
    ${result}    Run Keyword And Return Status    Element Text Should Be    ${locator}    ${expected}    False
    Pass Execution If    ${result}    Update success

Verify Delete Success
    [Arguments]    ${a}    ${b}
    ${x}=    Evaluate    ${a}-${b}
    Should Be True    ${x} == 1

Delete Module
    [Arguments]    ${arg}
    #Wait Until Element Is Visible    ${arg}    15
    @{list}=    Get WebElements    ${arg}
    FOR    ${i}    IN    @{list}
        Wait Until Element Is Visible    ${i}    60
        Open Context Menu    ${i}
        Wait Until Element Is Visible    ${btnDelete}
        Click Element    ${btnDelete}
        Wait Until Element Is Visible    ${DialogUnderlay}
        Click Element    ${btnYes}
    END
    Set Selenium Timeout    5
