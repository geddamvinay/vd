*** Settings ***
Resource  ../Resources/keywords.robot
Resource  ../Resources/common.robot
Library  SeleniumLibrary
Test Setup  Begin Web Test
Test Teardown    End Web Test
*** Test Cases ***
This test cases is used to test for signin(Functional Testing)
    [Documentation]     This test cases is used to test for signin(Functional Testing)
    check without input
    check for lower boundary
    check for upper boundary
    check for invalid password and valid mail
    check for invalid mail and valid password
    check for valid mail and password
This test cases is used test for signin(Validation Testing)
    [Documentation]  This test cases is used test for signin(Validation Testing)
    Validation test for lower boundary
    Validation test for upper boundary
    Validation for invalid password and valid mail
    Validation test for invalid mail and valid password


