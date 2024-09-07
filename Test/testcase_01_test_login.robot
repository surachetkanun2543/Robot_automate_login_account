*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource   ../resources/variables.robot

*** Test Cases ***
Test Login Functionality
    [Documentation]    
    Create Directory    ${SCREENSHOT_DIR}
    Open Browser    ${URL}    ${BROWSER}
    Input Text    id=username    ${username}
    Input Text    id=password    ${password}
    Capture Page Screenshot    ${SCREENSHOT_DIR}/login_page_screenshot.png
    Click Button    name=login 
    Wait Until Page Contains    Create a new account

