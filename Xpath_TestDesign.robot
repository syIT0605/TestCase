*** Variables ***
#login
${loginURL}       https://apitryout.qtestnet.com/
${browser}        Chrome
${userName}       api-test@qasymphony.com
${password}       admin123
${userNameInput}    //input[@id="userName"]
${passwordInput}    //input[@id="password"]
${loginButton}    //a[@id="loginButton"]
${reloginButton}    //button[@id="reloginBtn"]
${ternimateTitle}    //h4[contains(text(),"Terminate Sessions")]
#Create new test case
${TextNameModule}    Module1
${TabTestDesign}    //span[@id="working-tab_test-design_label"]
${Timeout}        15
${ClickProject}    //div[@id="test-design-tree-content"]//span[@class="text" and text()="Test-Project" ]
${NewModule}      //span[@id="tbtestdesignNewModule"]
${InputNameModule}    //input[@id="moduleHeader_editableContentInput"]
${NewTestCase}    //li[@id="contextMenuGrid-common.context_menu.test_design.new_test_case"]//span
${RightClickModule}    //a[@class="tree-item removable focused selected"]
${InputNameTestCase}    //input[@id="testCaseHeader_editableContentInput"]
${TextNameTestCase}    Test Case 1
${SelectStatus}    //span[@title="New"]
${Status}         In Progress
${SelectType}     //span[@title="Manual"]
${Type}           Automation
${SelectAssignedTo}    //property[@id="testcase_properties_AssignedToTestCaseSystemField_AssignedTo"]//i[@class="fa fa-caret-down"]
${AssignedTo}     //ul[@id="undefined_itemList"]//li[@id="undefined_listItem_demoUser"][1]
${Done}           //button[@id="undefined_doneBtn"]
${IframeDescription}    //div[@class="mce-edit-area mce-container mce-panel mce-stack-layout-item mce-last"]//iframe
${frameInput}     //body[@id="tinymce"]
${TextDescription}    fisrt test case
${SelectProperty}    //property[@id="testcase_properties_PriorityTestCaseSystemField_Priority"]//span[@class="select2-selection__arrow"]
${Priority}       Low
${Testing}        //property[@id="testcase_properties_DefaultField_Testing"]//input
${InputTextStep1}    //div[@class="note-editable card-block"]/p
${InputStep1}     //div[@class="precondition clearfix richtext-editor ng-star-inserted"]
${AddStep}        //tr[@class="custom-action ng-star-inserted"]//button[@class="btn btn-default actionBtn"]
${InputTextStep}    //div[@class="note-editable card-block"]/p
${Result}         //div[@class="richtext-editor clearfix ng-star-inserted"]
${btnSave}        //button[@id="testDesign_btnSaveAll"]
${Module1}        //span[@class="text" and text()= "Module1"]
${CountTestCase}    //div[text()="Test Cases"]//preceding-sibling::p/span
#Delete Module Old
${btnDelete}      //span[@class="icon-text" and @title="Delete"]
${DialogUnderlay}    //div[@id="confirm_dialog_underlay"]
${btnYes}         //span[@class="dijitReset dijitInline dijitButtonText" and text()="Yes"]
#${DLTModule1}    //div[@id="test-design-tree-container"]//span[@class="text" and text()= "Module1"]
#update
${TextStep1}      Login
${TextStep2}      Exit
${ResultTextStep2}    Exit success
${TextStep3}      Close window
${TextStep1Up}    Login Account
${TextStep2Up}    Input username and pass
${ResultTextStep2Up}    Login success
${TextStep3Up}    Finish
${TextUpStatus}    Ready For Baseline
${TextUpType}     Performance
${TextUpPriority}    High
${SelectStatusUp}    //span[@title="In Progress"]
${SelectTypeUp}    //span[@title="Automation"]
${DescripStep2}    //div[text()="Input username and pass"]
${DescripStep3}    //div[@class="richtext-editor clearfix ng-star-inserted" and text()="Finish"]
#//property[@id="testcase_properties_AssignedToTestCaseSystemField_AssignedTo"]//i[@class="fa fa-caret-down"]
${ClickTestCase}    //span[@class="text" and text()="Test Case 1"]
${ClickInputRename}    //span[@id="testCaseHeader_editableContent"]
${ClickIconModule}    //span[text()="Module1"]//preceding-sibling::span[3]
${TextNameTestCaseUpdate}    Name Update
${Updatetatus}    Ready For Baseline
${Updatetype}     Performance
${ClearAll}       //button[@id="undefined_clearAll" ]
${UpdateAssignedTo}    //label[text()="API qTest Manager"]
${TextDescriptionUpdate}    Update test case 1
${UpdatePriority}    High
${InputStep2}     //p[text()="Exit"]//parent::div[@class="richtext-editor clearfix ng-star-inserted"]//parent::grid-cell-parameters-richtext-editor//parent::td
${ResultStep2}    //p[text()="Exit success"]//parent::div[@class="richtext-editor clearfix ng-star-inserted"]//parent::grid-cell-parameters-richtext-editor//parent::td
${InputStep3}     //p[text()="Close window"]//parent::div[@class="richtext-editor clearfix ng-star-inserted"]//parent::grid-cell-parameters-richtext-editor//parent::td
#delete
${ClickTestcaseDLT}    //span[@class="text" and text()="Name Update"]
${ClickDelete}    //span[@class="icon-text" ]//parent::li[@id="contextMenuGrid-common.delete"]
${ClickYes}       //span[@id="confirmDialogActionYes"]
${ClickModule1DLT}    //span[@class="text" and text()="Module1"]
#verify create testcase
${LocatorStatus}    //label[text()="Status"]//following-sibling::span[@class="property-value"]//select
${LocatorType}    //label[text()="Type"]//following-sibling::span[@class="property-value"]//select
${LocatorPriority}    //label[text()="Priority"]//following-sibling::span[@class="property-value"]//select
