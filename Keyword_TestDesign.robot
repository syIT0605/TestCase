*** Keywords ***


Login Web TestDesign
    Set Selenium Speed    0.3
    Open Browser    ${loginURL}    ${browser}
    Maximize Browser Window
    Wait Until Element Is Enabled    ${userNameInput}
    Input Text    ${userNameInput}    ${userName}
    Input Text    ${passwordInput}    ${password}
    Click Element    ${loginButton}
    ${result}    ${Message}=    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${ternimateTitle}
    ${removeButton}=    Get WebElement    //tr[@data-index="0"]//a[@title="Remove"]
    Run Keyword If    '${result}'=='PASS'    Click Element    ${removeButton}
    Wait Until Element Is Enabled    ${reloginButton}
    Click Element    ${reloginButton}

Create Module Design
    Wait Until Element Is Visible    ${TabTestDesign}    ${Timeout}
    Click Element    ${TabTestDesign}
    Wait Until Element Is Visible    ${ClickProject}    ${Timeout}
    Click Element    ${ClickProject}
    Delete Module    ${Module1}
    Wait Until Element Is Visible    ${NewModule}    ${Timeout}
    Click Element    ${NewModule}
    Wait Until Element Is Visible    ${InputNameModule}    ${Timeout}
    Press Key    ${InputNameModule}    ${TextNameModule}
    Wait Until Element Is Visible    ${CountTestCase}    ${Timeout}
    Click Element    ${CountTestCase}



Test Case Properties
    [Arguments]    ${a}    ${b}
    Wait Until Element Is Visible    ${a}    15
    Click Element    ${a}
    Wait Until Element Is Visible    ${b}    15
    Click Element    ${b}



Input Test Step
    [Arguments]    ${a}    ${b}
    Wait Until Element Is Visible    ${a}    ${Timeout}
    Press Key    ${a}    ${b}

Input Test Step Update
    [Arguments]    ${a}    ${b}
    Wait Until Element Is Visible    ${a}    ${Timeout}
    Clear Element Text    ${a}
    Press Key    ${a}    ${b}


Create Test Case
    Wait Until Element Is Visible    ${Module1}    ${Timeout}
    Click Element    ${Module1}
    Open Context Menu    ${Module1}
    Wait Until Element Is Visible    ${NewTestCase}    ${Timeout}
    Click Element    ${NewTestCase}
    Wait Until Element Is Visible    ${InputNameTestCase}    ${Timeout}
    Press Key    ${InputNameTestCase}    ${TextNameTestCase}
    Select From List By Label    ${LocatorStatus}    ${Status}
    Wait Until Element Is Enabled    ${LocatorType}
    Select From List By Label    ${LocatorType}    ${Type}
    Test Case Properties    ${SelectAssignedTo}    ${AssignedTo}
    Click Element    ${Done}
    Select Frame    ${IframeDescription}
    Input Text    ${frameInput}    ${TextDescription}
    Unselect Frame
    Select From List By Label    ${LocatorPriority}    ${Priority}
    Select Checkbox    ${Testing}
    Click Element    ${InputStep1}
    Input test step    ${InputTextStep1}    ${TextStep1}
    Click Button    ${AddStep}
    Input test step    ${InputTextStep}    ${TextStep2}
    Click Element    ${Result}
    Input test step    ${InputTextStep}    ${ResultTextStep2}
    Click Button    ${AddStep}
    Input test step    ${InputTextStep}    ${TextStep3}
    Click Button    ${btnSave}
    Wait Until Element Is Visible    ${Module1}    ${Timeout}
    Click Element    ${Module1}
    Click Element    ${Module1}


