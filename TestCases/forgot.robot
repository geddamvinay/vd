*** Settings ***
Library  SeleniumLibrary
*** Variables ***
*** Keywords ***
*** Test Cases ***
validation test with input
    Open Browser    https://eficensit-test-8b2e9.web.app/   gc
    sleep   3s
    maximize browser window
    sleep   3s
    Click Element   //*[@id="for-pass"]
    sleep   5s
    Input Text    //html/body/div[6]/div[3]/div/div[1]/div/div/input  abcd
    sleep   5s
    wait until page contains    Invalid email format
    sleep   5s
    Reload Page
    sleep   3s
validation test with out input
    Click Element   //html/body/div[6]/div[3]/div/div[2]/button[2]/span[1]
    sleep   2s
    Click Element   //*[@id="for-pass"]
    sleep   5s
    Click Element   //html/body/div[6]/div[3]/div/div[2]/button[2]/span[1]
    sleep   2s
    wait until page contains    Invalid email format
    sleep   5s
    reload page
    sleep   3s
validation test for incorrect mail
    Click Element   //*[@id="for-pass"]
    sleep   5s
    Input Text    //html/body/div[6]/div[3]/div/div[1]/div/div/input  abcd@gamil.com
    sleep   5s
    Click Element   //html/body/div[6]/div[3]/div/div[2]/button[2]/span[1]
    sleep   2s
    wait until page contains    No record of your id in veridic solutions
    sleep   3s
    Reload Page
