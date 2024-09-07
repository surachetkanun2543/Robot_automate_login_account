*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource   ../resources/variables.robot


*** Test Cases ***
Test Create New Account
    [Documentation]    
    Go To   ${URL_CREATE_Account}
    Wait Until Page Contains    Create Team
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight);
    Sleep    2s
    Click Element    name=acceptAgreement
    Capture Page Screenshot    ${SCREENSHOT_DIR}/create_team_page_screenshot.png
    Sleep    10s
    Close Browser