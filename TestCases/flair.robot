*** Settings ***
Documentation  This test cases is used to test the Personal Information
Resource  ../Resources/keywords.robot
Resource  ../Resources/common.robot
Library  SeleniumLibrary
Test Setup   Begin Web Test
Test Teardown    End Web Test
*** Test Cases ***
This test cases is used to test the Personal Information
     [Documentation]    This test cases is used to test the Personal Information
     Personal Information
