*** Settings ***
Suite Setup       Login Web TestDesign
Suite Teardown    Close Browser
Test Setup        Create Module Design
Test Teardown     Run Keywords    Delete Module    ${ClickTestCase}
...               AND    Delete Module    ${ClickTestcaseDLT}
Library           SeleniumLibrary
Resource          Xpath_TestDesign.robot
Resource          Keyword_TestDesign.robot
Resource          Keyword_General.robot

*** Variables ***

*** Test Cases ***
Create New Test Case
    [Tags]    TC7
    #Delete Module    ${ClickTestCase}
    Wait Until Element Is Visible    ${Module1}    ${Timeout}
    Click Element    ${Module1}
    Wait Until Element Is Visible    ${CountTestCase}
    ${CountA}=    Get Text    ${CountTestCase}
    Click Element    ${CountTestCase}
    Wait Until Element Is Visible    ${Module1}    ${Timeout}
    Open Context Menu    ${Module1}
    Wait Until Element Is Visible    ${NewTestCase}    ${Timeout}
    Click Element    ${NewTestCase}
    Wait Until Element Is Visible    ${InputNameTestCase}    ${Timeout}
    Press Key    ${InputNameTestCase}    ${TextNameTestCase}
    Select From List By Label    ${LocatorStatus}    ${Status}
    Wait Until Element Is Enabled    ${LocatorType}    ${Timeout}
    Select From List By Label    ${LocatorType}    ${Type}
    Test Case Properties    ${SelectAssignedTo}    ${AssignedTo}
    Click Element    ${Done}
    Select Frame    ${IframeDescription}
    Input Text    ${frameInput}    ${TextDescription}
    Unselect Frame
    Select From List By Label    ${LocatorPriority}    ${Priority}
    Select Checkbox    ${Testing}
    Click Element    ${InputStep1}
    Input Test Step    ${InputTextStep1}    ${TextStep1}
    Click Button    ${AddStep}
    Input Test Step    ${InputTextStep}    ${TextStep2}
    Click Element    ${Result}
    Input Test Step    ${InputTextStep}    ${ResultTextStep2}
    Click Button    ${AddStep}
    Input Test Step    ${InputTextStep}    ${TextStep3}
    Click Button    ${btnSave}
    Wait Until Element Is Visible    ${Module1}    ${Timeout}
    Click Element    ${Module1}
    Click Element    ${Module1}
    Wait Until Element Is Visible    ${CountTestCase}    ${Timeout}
    ${CountB}=    Get Text    ${CountTestCase}
    Verify Create Success    ${CountA}    ${CountB}
    [Teardown]    Delete Module    ${Module1}

Update Test Case
    [Tags]    TC8
    Create Test Case
    Click Element    ${Module1}
    Wait Until Element Is Visible    ${ClickTestCase}    ${Timeout}
    Click Element    ${ClickTestCase}
    Wait Until Element Is Visible    ${ClickInputRename}    ${Timeout}
    Click Element    ${ClickInputRename}
    Press Key    ${InputNameTestCase}    ${TextNameTestCaseUpdate}
    Select From List By Label    ${LocatorStatus}    ${Updatetatus}
    Wait Until Element Is Enabled    ${LocatorType}
    Select From List By Label    ${LocatorType}    ${Updatetype}
    Click Element    ${SelectAssignedTo}
    Click Button    ${ClearAll}
    Wait Until Element Is Visible    ${UpdateAssignedTo}    ${Timeout}
    Click Element    ${UpdateAssignedTo}
    Click Element    ${Done}
    Select Frame    ${IframeDescription}
    Input Text    ${frameInput}    ${TextDescriptionUpdate}
    Unselect Frame
    Select From List By Label    ${LocatorPriority}    ${UpdatePriority}
    Select Checkbox    ${Testing}
    Click Element    ${InputStep1}
    Input Test Step Update    ${InputTextStep1}    ${TextStep1Up}
    Click Element    ${InputStep2}
    Input Test Step Update    ${InputTextStep}    ${TextStep2Up}
    Wait Until Element Is Visible    ${ResultStep2}    ${Timeout}
    Click Element    ${ResultStep2}
    Input Test Step Update    ${InputTextStep}    ${ResultTextStep2Up}
    Click Element    ${InputStep3}
    Input Test Step Update    ${InputTextStep}    ${TextStep3Up}
    Click Button    ${btnSave}
    Wait Until Element Is Enabled    ${Module1}    ${Timeout}
    Click Element    ${Module1}
    Wait Until Element Is Visible    ${ClickTestcaseDLT}    ${Timeout}
    Click Element    ${ClickTestcaseDLT}
    Wait Until Element Is Visible    ${ClickInputRename}    ${Timeout}
    Element Text Should Be    ${ClickInputRename}    ${TextNameTestCaseUpdate}
    Wait Until Element Is Visible    ${LocatorStatus}    ${Timeout}
    List Selection Should Be    ${LocatorStatus}    ${TextUpStatus}
    Wait Until Element Is Enabled    ${LocatorType}
    List Selection Should Be    ${LocatorType}    ${TextUpType}
    Wait Until Element Is Visible    ${LocatorPriority}    ${Timeout}
    List Selection Should Be    ${LocatorPriority}    ${TextUpPriority}
    Frame Should Contain    ${IframeDescription}    ${TextDescriptionUpdate}
    Element Should Be Visible    ${InputStep1}
    Element Should Be Visible    ${DescripStep2}
    Element Should Be Visible    ${DescripStep3}
    [Teardown]    Delete Module    ${Module1}

Delete Test Case
    [Tags]    TC9
    Create Test Case
    Click Element    ${Module1}
    Wait Until Element Is Visible    ${CountTestCase}    ${Timeout}
    ${CountDLTTestA}=    Get Text    ${CountTestCase}
    Wait Until Element Is Visible    ${ClickTestCase}    ${Timeout}
    Open Context Menu    ${ClickTestCase}
    Wait Until Element Is Visible    ${ClickDelete}    ${Timeout}
    Click Element    ${ClickDelete}
    Wait Until Element Is Visible    ${ClickYes}    ${Timeout}
    Click Element    ${ClickYes}
    Wait Until Element Is Visible    ${Module1}    ${Timeout}
    Click Element    ${Module1}
    Wait Until Element Is Visible    ${CountTestCase}    ${Timeout}
    ${CountDLTTestB}=    Get Text    ${CountTestCase}
    Verify Delete Success    ${CountDLTTestA}    ${CountDLTTestB}
    [Teardown]    Delete Module    ${Module1}
