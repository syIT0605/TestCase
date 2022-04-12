*** Keywords ***

Login Web Requirement
    Set Selenium Speed    0.5
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

Create Module Requirement
    Wait Until Element Is Visible    ${TapRequirement}    ${Timeout}
    Click Element    ${TapRequirement}
    Delete Module    ${DLTModule}
    Wait Until Element Is Visible    ${Click_TestProject}    ${Timeout}
    Click Element    ${Click_TestProject}
    Wait Until Element Is Visible    ${createNewModuleButton}    ${Timeout}
    Click Element    ${createNewModuleButton}
    Wait Until Element Is Enabled    ${InputNameModule}
    Press Key    ${InputNameModule}    ${TextNameRequire}
    Wait Until Element Is Visible    ${TapRequirement}    ${Timeout}
    Click Element    ${TapRequirement}
    Click Element    ${CountRequire}
    Wait Until Element Is Visible    ${ClickModule}    ${Timeout}
    Click Element    ${ClickModule}

Requirement Property
    [Arguments]    ${a}    ${b}
    Wait Until Element Is Visible    ${a}
    Click Element    ${a}
    Wait Until Element Is Visible    ${b}
    Click Element    ${b}

Create A Requirement
    Open Context Menu    ${ClickModule}
    Click Element    ${NewRequirement}
    Wait Until Element Is Visible    ${InputNameRequirement}    ${Timeout}
    Press Key    ${InputNameRequirement}    ${TextNameRequirement}
    Requirement property    ${ClickPriority}    ${Priority}
    Requirement property    ${ClickType}    ${Type}
    Requirement property    ${ClickAssigned}    ${Assigned}
    Wait Until Element Is Visible    ${InputDescripRequire}    ${Timeout}
    Press Key    ${InputDescripRequire}    ${TextDescripRequire}
    Click Element    ${SaveRequirement}
    Wait Until Element Is Visible    ${ClickModule}    ${Timeout}
    Click Element    ${ClickModule}
    Wait Until Element Is Visible    ${CountRequire}    ${Timeout}

Create A New Sub Module
    Click Element    ${ClickModule}
    Open Context Menu    ${ClickModule}
    Click Element    ${NewSubModule}
    Wait Until Element Is Visible    ${InputNameSubModule}
    Press Key    ${InputNameSubModule}    ${TextNameSub}
    #Sleep    2
    Click Element    ${ClickModule}
