*** Settings ***
Library    BuiltIn
Library    SeleniumLibrary

*** Variables ***
${URL_FRONTEND}    http://localhost:4200
${CHROME}       chrome

*** Keywords ***
User goes to the navigationbar and click on tools
    [Tags]      test_frontend
    click element   xpath:/html/body/app-root/app-layout/div/div[1]/app-sidebar/app-menu/ul/li[1]/ul/li[2]/a
    Sleep       2s

##################CLICK_ON_COMPONENTS##################
User clicks on the component DateTime
    [Documentation]    CLick on atomic component
    [Tags]      test_frontend
    Click button    xpath:/html/body/app-root/app-layout/div/div[2]/div/app-tool-gallery/div/div[6]/app-tool-gallery-component/p-card/div/div[2]/div[4]/p-button/button
    Sleep       2s

User clicks on the component Float
    [Documentation]    Click on atomic component
    [Tags]    test_frontend
    Click Button    xpath:/html/body/app-root/app-layout/div/div[2]/div/app-tool-gallery/div/div[7]/app-tool-gallery-component/p-card/div/div[2]/div[4]/p-button/button

##################TOGGLES##################
User clicks the toggle 'can create'
    [Documentation]    toggle
    [Tags]      test_frontend
    Click Element    xpath:/html/body/app-root/app-layout/div/div[2]/div/app-tool-component-details/div[2]/div[1]/app-atomic-boolean/div/div/div/p-inputswitch/div
    sleep       2s

User clicks the toggle 'can read'
    [Documentation]    toggle
    [Tags]      test_frontend
    Click Element    xpath:/html/body/app-root/app-layout/div/div[2]/div/app-tool-component-details/div[2]/div[2]/app-atomic-boolean/div/div/div/p-inputswitch/div
    sleep       2s

User clicks the toggle 'can update'
    [Documentation]    toggle
    [Tags]      test_frontend
    Click Element    xpath:/html/body/app-root/app-layout/div/div[2]/div/app-tool-component-details/div[2]/div[3]/app-atomic-boolean/div/div/div/p-inputswitch/div
    sleep       2s

User clicks the toggle 'can delete'
    [Documentation]    toggle
    [Tags]      test_frontend
    Click Element    xpath:/html/body/app-root/app-layout/div/div[2]/div/app-tool-component-details/div[2]/div[4]/app-atomic-boolean/div/div/div/p-inputswitch/div
    sleep       2s

User clicks the toggle 'expression is univalent'
    [Documentation]    toggle
    [Tags]      test_frontend
    Click Element    xpath:/html/body/app-root/app-layout/div/div[2]/div/app-tool-component-details/div[3]/div[1]/app-atomic-boolean/div/div/div/p-inputswitch/div
    sleep       2s

User clicks the toggle 'expression is total'
    [Documentation]    toggle
    [Tags]      test_frontend
    Click Element    xpath:/html/body/app-root/app-layout/div/div[2]/div/app-tool-component-details/div[3]/div[2]/app-atomic-boolean/div/div/div/p-inputswitch/div
    sleep       2s

##################VERIFICATIONS##################
User verifies if component DateTime is not readable
    [Documentation]    Verification
    [Tags]    test_frontend
    Page Should Contain     DateTime is not readable
    Page Should Not Contain Element   xpath:/html/body/app-root/app-layout/div/div[2]/div/app-tool-component-details/div[1]/div/app-atomic-datetime/div/p-calendar/span/input

User verifies if a date can be selected and DateTime has an inputfield
    [Documentation]    Verify
    [Tags]    test_frontend
    Page Should Contain Element     xpath:/html/body/app-root/app-layout/div/div[2]/div/app-tool-component-details/div[1]/div/app-atomic-datetime/div/p-calendar/span/input
    Sleep    2s

User select date 2022-11-01
    [Documentation]     Select Date
    [Tags]      test_frontend
    Click Element    xpath:/html/body/app-root/app-layout/div/div[2]/div/app-tool-component-details/div[1]/div/app-atomic-datetime/div/p-calendar/span/input
    Click Button     xpath:/html/body/app-root/app-layout/div/div[2]/div/app-tool-component-details/div[1]/div/app-atomic-datetime/div/p-calendar/span/div/div[1]/div/div[1]/div/button[2]
    Click Element    xpath:/html/body/app-root/app-layout/div/div[2]/div/app-tool-component-details/div[1]/div/app-atomic-datetime/div/p-calendar/span/div/div[2]/span[3]
    Click Element    xpath:/html/body/app-root/app-layout/div/div[2]/div/app-tool-component-details/div[1]/div/app-atomic-datetime/div/p-calendar/span/div/div[2]/span[11]
    Click Element    xpath:/html/body/app-root/app-layout/div/div[2]/div/app-tool-component-details/div[1]/div/app-atomic-datetime/div/p-calendar/span/div/div[1]/div/div[2]/table/tbody/tr[1]/td[3]
    Sleep    2s

Verify if the right date is selected
    [Documentation]     Verify on the date
    [Tags]      test_frontend
    Page Should Contain Element        css=[ng-reflect-model^="2022-11-01"]
    Page Should Not Contain     css=[ng-reflect-model^=2023-11-01

Verify if you cann't update the date
    [Documentation]    Verify date and inputfield
    Page Should Contain    2022-11-01
    Page Should Contain Element    xpath:/html/body/app-root/app-layout/div/div[2]/div/app-tool-component-details/div[1]/div/app-atomic-datetime/div/p-calendar

