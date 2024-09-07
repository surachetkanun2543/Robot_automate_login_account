*** Settings ***
Library    Process

*** Test Cases ***
Test Login Functionality
    [Documentation]    รันเทสเคสสำหรับการเข้าสู่ระบบ
    Run Process    robot    test_login.robot

Test Create New Account
    [Documentation]    รันเทสเคสสำหรับการสร้างบัญชีใหม่
    Run Process    robot    test_create_new_account.robot
