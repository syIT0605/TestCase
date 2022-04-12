*** Variables ***
#new requirement
${BROWSER}        Chrome
${createNewModuleButton}    //span[@id="btnNewModule"]
${ClickModule}    //span[@class="text" and text()="sy1"]
${InputNameModule}    //div[@class="editable-content"]//input[@id="moduleHeader_editableContentInput"]
${Click_TestProject}    //requirement-tree[@id="requirement-tree"]//span[@class="text" and text()="Test-Project" ]
${RightClickModule}    //a[@class="tree-item removable focused selected"]
${NewRequirement}    //li[@class="tree-context-menu-option enabled"]//span[@title="New Requirement"]
${TapRequirement}    //span[@id="working-tab_requirementId_label"]
${InputDescripRequire}    //iframe[@id="descriptionRequirement_editorNode_ifr"]
${InputNameSubModule}    //input[@id="moduleHeader_editableContentInput"]
${CountRequire}    //div[@class="info-content"]//div[text()="Requirements"]//preceding-sibling::p/span
${TextNameRequirement}    neww
${Timeout}        15
${DLTModule}      //div[@id="requirement-tree-container"]//span[@class="text" and text()= "sy1"]
${DLTModule2}     //div[@id="requirement-tree-container"]//span[@class="text" and text()= "sy2"]
${InputNameRequirement}    //div[@id="customtitlepaneRequirement_innerEditor"]//input[@class="dijitReset dijitInputInner"]
${TextNameRequire}    sy1
${TextDescripRequire}    new requirement
${TextNameSubmodule}    sy2
${DialogUnderlay}    //div[@id="confirm_dialog_underlay"]
${btnDelete}      //span[@class="icon-text" and @title="Delete"]
${btnYes}         //span[@class="dijitReset dijitInline dijitButtonText" and text()="Yes"]
#${deleteLogin}    //tr[@data-index="2"]//span
${ClickPriority}    //div[@id="widget_priorityRequirement_selectNode"]//input[@class="dijitReset dijitInputField dijitArrowButtonInner"]
${Priority}       //div[text()="Nice to have"]
${Type}           //div[text()="Non-functional"]
${ClickType}      //div[@id="typeRequirement"]//input[@class="dijitReset dijitInputField dijitArrowButtonInner"]
${ClickAssigned}    //div[@id="assignedToRequirement"]//div[@class="dijitReset dijitRight dijitButtonNode dijitArrowButton dijitDownArrowButton dijitArrowButtonContainer"]
${Assigned}       //label[text()="Select all"]
#${InputDescripTion}    //body[@data-id="descriptionRequirement_editorNode"]//p
${SaveRequirement}    //span[text()="Save"]
#sub module
${NewSubModule}    //li[@id="contextMenuGrid-common.context_menu.test_design.new_module"]//span[@title="New Module"]
${ClickSubModule}    //span[text()="sy2"]
${Clickicon}      //span[@class="text" and text()= "sy2"]//preceding-sibling::span[@class="icon icon-collapsed toggle"]
${Clicknewmodule}    //span[@class="text" and text()="newmodule"]
${ClickInput}     //span[@id="moduleHeader_editableContent"]
${InputNameSubmd}    //input[@id="moduleHeader_editableContentInput"]
${TextNameSubmd}    Submodule
${CountSub}       //div[@class="info-content"]//div[text()="Sub Modules"]//preceding-sibling::p/span
${NewNameModule}    //input[@id="moduleHeader_editableContentInput"]
${TabProperti}    //a[@id="moduleTabView_tab_properties"]//span
${IfameInputName}    //div[@class="mce-edit-area mce-container mce-panel mce-stack-layout-item mce-last"]//iframe
${ButtonSave}     //button[@id="properties_btnSaveAll"]
${TextNameUpDateSub}    update module
${TextNameSub}    newmodule
${TextDescripSub}    upmodule
#new modunle
${NewModule}      //span[@id="btnNewModule"]
${btnGo}          //button[@id="reloginBtn"]
#login
${loginURL}       https://apitryout.qtestnet.com/
${browser}        Chrome
${userName}       api-test@qasymphony.com
${password}       admin123
#update requirement
${UpdateNameRequirement}    //span[@class="dijitInlineEditBoxDisplayMode subscription"]
${clickrequirement}    //span[@class="text" and text()="neww"]
${ClickPriority}    //div[@id="widget_priorityRequirement_selectNode"]//input[@class="dijitReset dijitInputField dijitArrowButtonInner"]
${NewPriority}    //div[text()="Should have"]
${NewType}        //div[text()="Functional"]
${ClearAssigned}    //label[text()="Clear all"]
${TypeAssigned}    //div[text()="API qTest Manager"]
${descriptionFrame}    //iframe[@id="descriptionRequirement_editorNode_ifr"]
${frameInput}     //body[@id="tinymce"]
${textDescription}    Edit requirement
${NameUpdate}     new_name
${SaveUpdateRequire}    //span[@class="dijitReset dijitInline dijitIcon qasymphonyPageIcon qasymphonyPageIconSave"]
${ClickNewAssigned}    //div[@id="assignedToRequirement"]//div[@class="dijitReset dijitRight dijitButtonNode dijitArrowButton dijitDownArrowButton dijitArrowButtonContainer"]
#delete require
${RightClickRequire}    //div[@class="children-container removable"]//span[text()="new_name"]
${DeleteRequire}    //li[@id="contextMenuGrid-common.delete"]//span
${ConfirmYes}     //span[@id="confirmDialogActionYes_label"]
${clickrequire}    //span[@class="text" and text()="new_name"]
#update module
#delete sub module
${ClickSubmoduleDLT}    //span[@class="text" and text()="Submodule"]
${SubmoduleDLT}    //li[@id="contextMenuGrid-common.delete"]
${SubmoduleDLT_Yes}    //span[@id="confirmDialogActionYes_label"]
${ClickSaveDLT}    //div[@id="confirmSaveDialog"]
${savee}          //div[@id="confirmSaveDialog"]
#Xpath and Variable for Login Page
${userNameInput}    //input[@id="userName"]
${passwordInput}    //input[@id="password"]
${loginButton}    //a[@id="loginButton"]
${reloginButton}    //button[@id="reloginBtn"]
${ternimateTitle}    //h4[contains(text(),"Terminate Sessions")]
