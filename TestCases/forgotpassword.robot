*** Settings ***
Resource  ../Resources/keywords.robot
Resource  ../Resources/common.robot
Resource    ../Globalvariables/xpath.robot
Library  SeleniumLibrary
Test Setup  Begin Web Test
Test Teardown    End Web Test
*** Test Cases ***
This test cases is used to test for forgotpassword(Functional Testing)
    [Documentation]  This test cases is used to test for forgotpassword(Functional Testing)
    check without input(forgot)
    check for lower boundary(forgot)
    check for upper boundary(forgot)
    check for invalid mail
    check for incorrect mail
This test cases is used to test for forgotpassword(Validation Testing)
    [Documentation]  This test cases is used to test for forgotpassword(Validation Testing)
    validation test with input
    validation test with out input
    validation test for incorrect mail
    validation test for correct mail