*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn

*** Keywords ***
User navigates Tools Page
    Click Element  xpath:/html/body/app-root/app-layout/div/div[1]/app-sidebar/app-menu/ul/li[1]/ul/li[2]/a
    Sleep       2s
User checks Can Create
    Click Element  xpath:/html[1]/body[1]/app-root[1]/app-layout[1]/div[1]/div[2]/div[1]/app-tool-component-details[1]/div[2]/div[1]/app-atomic-boolean[1]/div[1]/div[1]/div[1]/p-inputswitch[1]/div[1]/span[1]
    Sleep  2s
    Click Element   xpath:/html[1]/body[1]/app-root[1]/app-layout[1]/div[1]/div[2]/div[1]/app-tool-component-details[1]/div[2]/div[1]/app-atomic-boolean[1]/div[1]/div[1]/div[1]/p-inputswitch[1]/div[1]/span[1]
    Sleep  2s
User checks Can Read
    Click Element    xpath:/html[1]/body[1]/app-root[1]/app-layout[1]/div[1]/div[2]/div[1]/app-tool-component-details[1]/div[2]/div[2]/app-atomic-boolean[1]/div[1]/div[1]/div[1]/p-inputswitch[1]/div[1]/span[1]
    Sleep  2s
    Click Element    xpath:/html[1]/body[1]/app-root[1]/app-layout[1]/div[1]/div[2]/div[1]/app-tool-component-details[1]/div[2]/div[2]/app-atomic-boolean[1]/div[1]/div[1]/div[1]/p-inputswitch[1]/div[1]/span[1]
    Sleep  2s
User checks Can Update
    Click Element    xpath:/html[1]/body[1]/app-root[1]/app-layout[1]/div[1]/div[2]/div[1]/app-tool-component-details[1]/div[2]/div[3]/app-atomic-boolean[1]/div[1]/div[1]/div[1]/p-inputswitch[1]/div[1]/span[1]
    Sleep  2s
    Click Element    xpath:/html[1]/body[1]/app-root[1]/app-layout[1]/div[1]/div[2]/div[1]/app-tool-component-details[1]/div[2]/div[3]/app-atomic-boolean[1]/div[1]/div[1]/div[1]/p-inputswitch[1]/div[1]/span[1]
    Sleep  2s
User checks Can Delete
    Click Element  xpath:/html[1]/body[1]/app-root[1]/app-layout[1]/div[1]/div[2]/div[1]/app-tool-component-details[1]/div[2]/div[4]/app-atomic-boolean[1]/div[1]/div[1]/div[1]/p-inputswitch[1]/div[1]/span[1]
    Sleep  2s
    Click Element    xpath:/html[1]/body[1]/app-root[1]/app-layout[1]/div[1]/div[2]/div[1]/app-tool-component-details[1]/div[2]/div[4]/app-atomic-boolean[1]/div[1]/div[1]/div[1]/p-inputswitch[1]/div[1]/span[1]
    Sleep  2s
User checks Expression is univalent
    Click Element  xpath:/html[1]/body[1]/app-root[1]/app-layout[1]/div[1]/div[2]/div[1]/app-tool-component-details[1]/div[3]/div[1]/app-atomic-boolean[1]/div[1]/div[1]/div[1]/p-inputswitch[1]/div[1]/span[1]
    Sleep  2s
    Click Element    xpath:/html[1]/body[1]/app-root[1]/app-layout[1]/div[1]/div[2]/div[1]/app-tool-component-details[1]/div[3]/div[1]/app-atomic-boolean[1]/div[1]/div[1]/div[1]/p-inputswitch[1]/div[1]/span[1]
    Sleep  2s
User checks Expression is total
    Click Element   xpath:/html[1]/body[1]/app-root[1]/app-layout[1]/div[1]/div[2]/div[1]/app-tool-component-details[1]/div[3]/div[2]/app-atomic-boolean[1]/div[1]/div[1]/div[1]/p-inputswitch[1]/div[1]/span[1]
    Sleep  2s
    Click Element    xpath:/html[1]/body[1]/app-root[1]/app-layout[1]/div[1]/div[2]/div[1]/app-tool-component-details[1]/div[3]/div[2]/app-atomic-boolean[1]/div[1]/div[1]/div[1]/p-inputswitch[1]/div[1]/span[1]
    Sleep  2s