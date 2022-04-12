*** Settings ***
Suite Setup       Login Web Requirement
Suite Teardown    Close Browser
Test Setup        Create Module Requirement
Test Teardown     Delete Module    ${DLTModule}
Library           SeleniumLibrary
Resource          Xpath_Requirement.robot
Resource          Keyword_Requirement.robot
Resource          Keyword_General.robot

*** Test Cases ***
Create A New Requirement
    [Tags]    TC1
    Wait Until Element Is Visible    ${CountRequire}    ${Timeout}
    ${CountA}=    Get Text    ${CountRequire}
    Open Context Menu    ${RightClickModule}
    Click Element    ${NewRequirement}
    Wait Until Element Is Visible    ${InputNameRequirement}    ${Timeout}
    Press Key    ${InputNameRequirement}    ${TextNameRequirement}
    Requirement Property    ${ClickPriority}    ${Priority}
    Requirement Property    ${ClickType}    ${Type}
    Requirement Property    ${ClickAssigned}    ${Assigned}
    Wait Until Element Is Visible    ${InputDescripRequire}    ${Timeout}
    Press Key    ${InputDescripRequire}    ${TextDescripRequire}
    Click Element    ${SaveRequirement}
    Wait Until Element Is Visible    ${ClickModule}    ${Timeout}
    Click Element    ${ClickModule}
    Wait Until Element Is Visible    ${CountRequire}    ${Timeout}
    ${CountB}=    Get Text    ${CountRequire}
    Verify Create Success    ${CountA}    ${CountB}

Create A New Sub Module
    [Tags]    TC2
    Click Element    ${ClickModule}
    Wait Until Element Is Visible    ${CountSub}
    ${CountSubA}=    Get Text    ${CountSub}
    Open Context Menu    ${RightClickModule}
    Click Element    ${NewSubModule}
    Wait Until Element Is Visible    ${InputNameSubModule}
    Press Key    ${InputNameSubModule}    ${TextNameSub}
    Click Element    ${ClickModule}
    Wait Until Element Is Visible    ${CountSub}
    ${CountSubB}=    Get Text    ${CountSub}
    Verify Create Success    ${CountSubA}    ${CountSubB}

Update A Requirement
    [Tags]    TC3
    Click Element    ${ClickModule}
    Create A Requirement
    Wait Until Element Is Visible    ${clickrequirement}    ${Timeout}
    Click Element    ${clickrequirement}
    Wait Until Element Is Visible    ${UpdateNameRequirement}    ${Timeout}
    Click Element    ${UpdateNameRequirement}
    Press Key    ${InputNameRequirement}    ${NameUpdate}
    Click Element    ${ClickPriority}
    Wait Until Element Is Visible    ${NewPriority}
    Click Element    ${NewPriority}
    Click Element    ${ClickType}
    Wait Until Element Is Visible    ${NewType}
    Click Element    ${NewType}
    Wait Until Element Is Visible    ${ClickNewAssigned}
    Click Element    ${ClickNewAssigned}
    Wait Until Element Is Visible    ${ClearAssigned}
    Click Element    ${ClearAssigned}
    Click Element    ${TypeAssigned}
    Select Frame    ${descriptionFrame}
    Input Text    ${frameInput}    ${textDescription}
    Unselect Frame
    Click Element    ${SaveUpdateRequire}
    Wait Until Element Is Visible    ${RightClickModule}
    Click Element    ${ClickModule}
    Verify Update Success    ${UpdateNameRequirement}    ${NameUpdate}

Delete A Requirement
    [Tags]    TC4
    Click Element    ${ClickModule}
    Create A Requirement
    Wait Until Element Is Visible    ${CountRequire}    ${Timeout}
    ${CountA1}=    Get Text    ${CountRequire}
    Wait Until Element Is Visible    ${clickrequirement}    ${Timeout}
    Click Element    ${clickrequirement}
    Open Context Menu    ${clickrequirement}
    Wait Until Element Is Visible    ${DeleteRequire}    ${Timeout}
    Click Element    ${DeleteRequire}
    Wait Until Element Is Visible    ${ConfirmYes}    ${Timeout}
    Click Element    ${ConfirmYes}
    Wait Until Element Is Visible    ${ClickModule}    ${Timeout}
    Click Element    ${ClickModule}
    Wait Until Element Is Visible    ${CountRequire}    ${Timeout}
    ${CountB1}=    Get Text    ${CountRequire}
    Verify Delete Success    ${CountA1}    ${CountB1}

Update A Sub Module
    [Tags]    TC5
    Create A New Sub Module
    Wait Until Element Is Visible    ${Clicknewmodule}    ${Timeout}
    Click Element    ${Clicknewmodule}
    Wait Until Element Is Visible    ${ClickInput}    ${Timeout}
    Click Element    ${ClickInput}
    Press Key    ${InputNameSubmd}    ${TextNameSubmd}
    Wait Until Element Is Visible    ${TabProperti}    ${Timeout}
    Click Element    ${TabProperti}
    Wait Until Element Is Visible    ${IfameInputName}    ${Timeout}
    Select Frame    ${IfameInputName}
    Input Text    ${frameInput}    ${TextNameUpDateSub}
    Unselect Frame
    Wait Until Element Is Visible    ${ButtonSave}    ${Timeout}
    Click Button    ${ButtonSave}
    Wait Until Element Is Visible    ${ClickModule}    ${Timeout}
    Click Element    ${ClickModule}
    Verify Update Success    ${ClickInput}    ${TextNameSubmd}

Delete A Sub Module
    [Tags]    TC6
    Create A New Sub Module
    Wait Until Element Is Visible    ${ClickModule}    ${Timeout}
    Click Element    ${ClickModule}
    Wait Until Element Is Visible    ${CountSub}    ${Timeout}
    ${CountDLTSubA}=    Get Text    ${CountSub}
    Wait Until Element Is Visible    ${Clicknewmodule}    ${Timeout}
    Open Context Menu    ${Clicknewmodule}
    Click Element    ${SubmoduleDLT}
    Wait Until Element Is Visible    ${SubmoduleDLT_Yes}
    Click Element    ${SubmoduleDLT_Yes}
    ${saveee}    Run Keyword And Return Status    Element Should Be Visible    ${ClickSaveDLT}
    Run Keyword If    ${saveee}    Click Save
    Wait Until Element Is Visible    ${ClickModule}    ${Timeout}
    Click Element    ${ClickModule}
    Wait Until Element Is Visible    ${CountSub}    ${Timeout}
    ${CountDLTSubB}=    Get Text    ${CountSub}
    Verify Delete Success    ${CountDLTSubA}    ${CountDLTSubB}
