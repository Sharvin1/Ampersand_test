*** Settings ***
Library     BuiltIn
Library     SeleniumLibrary

*** Variables ***
${URL_FRONTEND}    http://localhost:4200
${URL_GOOGLE}     https://google.com
${CHROME}       chrome
${input}    

*** Keywords ***
#Start of the test for frontend application
I go to localhost:4200
    [Tags]      test_frontend
    open browser   ${URL_FRONTEND}        ${CHROME}
    sleep   2s

#Go to the navigationbar and go to tools
I go the navigationbar and click on tools
    [Tags]      test_frontend
    click element        xpath:/html/body/app-root/app-layout/div/div[1]/app-sidebar/app-menu/ul/li[1]/ul/li[2]/a
    Sleep       2s


#Click on atomic component: Alphanumeric
I click on the component Alphanumeric
    [Tags]      test_frontend
    Click Button     xpath:/html/body/app-root/app-layout/div/div[2]/div/app-tool-gallery/div/div[1]/app-tool-gallery-component/p-card/div/div[2]/div[4]/p-button/button
    Sleep       2s

#Click on atomic component: Bigalphanumeric
I click on the component Bigalphanumeric
    [Tags]    test_frontend
    Click Button    xpath:/html/body/app-root/app-layout/div/div[2]/div/app-tool-gallery/div/div[2]/app-tool-gallery-component/p-card/div/div[2]/div[4]/p-button/button
    sleep   2s


#Click and validation for 'can read'
I disable the toggle 'can read'
    [Tags]      test_frontend
    Click Element    xpath:/html/body/app-root/app-layout/div/div[2]/div/app-tool-component-details/div[2]/div[2]/app-atomic-boolean/div/div/div/p-inputswitch/div/span
    Sleep    2s
I validate the toggle 'can read' on the inputfield and text
    [Tags]    test_frontend
    Page Should Not Contain Element   xpath:/html/body/app-root/app-layout/div/div[2]/div/app-tool-component-details/div[1]/div/app-atomic-alphanumeric/div/div/div/input
    Page Should Contain    Alphanumeric is not readable

#Click and validation for 'can update'
I disable the toggle 'can update'
    [Tags]    test_frontend
    Click Element    xpath:/html/body/app-root/app-layout/div/div[2]/div/app-tool-component-details/div[2]/div[3]/app-atomic-boolean/div/div/div/p-inputswitch/div/span
    Sleep   2s
I validate the toggle 'can update' on the inputfield and text
    [Tags]    test_frontend
    Page Should Not Contain Element   xpath:/html/body/app-root/app-layout/div/div[2]/div/app-tool-component-details/div[1]/div/app-atomic-alphanumeric/div/div/div/input
    Page Should Contain    Pre-set value
    #Value doesn't change


Ik ga naar google
    [Tags]    youtube
    Open Browser    ${URL_GOOGLE}       ${CHROME}
    sleep   2s
    Click Button    xpath:/html/body/div[2]/div[2]/div[3]/span/div/div/div/div[3]/div[1]/button[1]

Ik typ in Youtube en druk enter
    [Tags]    youtube
    Input Text      xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input       youtube
    Press Keys    xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input     ENTER
    sleep   2s

Ik druk de zoekresultaat youtube
    [Tags]    youtube
    Click Element    xpath:/html/body/div[7]/div/div[11]/div[1]/div[2]/div[2]/div/div/div[1]/div/div/div/div/div/div/div[1]/a/h3

Ik weiger de cookies op youtube.com
    [Tags]    youtube
    Click Button    xpath:/html/body/ytd-app/ytd-consent-bump-v2-lightbox/tp-yt-paper-dialog/div[4]/div[2]/div[6]/div[1]/ytd-button-renderer[1]/yt-button-shape/button
    Sleep   2s

Ik typ rtl nieuws in het zoekveld van youtube
    [Tags]    youtube
    Input Text    xpath:/html/body/ytd-app/div[1]/div/ytd-masthead/div[3]/div[2]/ytd-searchbox/form/div[1]/div[1]/input    rtlnieuws
    Press Keys    xpath:/html/body/ytd-app/div[1]/div/ytd-masthead/div[3]/div[2]/ytd-searchbox/form/div[1]/div[1]/input     ENTER
    Sleep   2s

Ik druk op het kanaal van rtl nieuws
    [Tags]    youtube
    Click Element    xpath:/html/body/ytd-app/div[1]/ytd-page-manager/ytd-search/div[1]/ytd-two-column-search-results-renderer/div[2]/div/ytd-section-list-renderer/div[2]/ytd-item-section-renderer/div[3]/ytd-channel-renderer/div/div[1]/a
    Sleep    2s

Ik druk op een video
    [Tags]    youtube
    Click Element    xpath:/html/body/ytd-app/div[1]/ytd-page-manager/ytd-browse[2]/ytd-two-column-browse-results-renderer/div[1]/ytd-section-list-renderer/div[2]/ytd-item-section-renderer[1]/div[3]/ytd-shelf-renderer/div[1]/div[2]/yt-horizontal-list-renderer/div[2]/div/ytd-grid-video-renderer[1]/div[1]/ytd-thumbnail/a/yt-image/img
    Sleep    20s