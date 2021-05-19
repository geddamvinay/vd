*** Settings ***
Library  SeleniumLibrary
*** Variables ***
*** Keywords ***
*** Test Cases ***
phonepe
    Open Browser    https://www.phonepe.com/    gc
    sleep   3s
    Click Element   //*[@id="gatsby-focus-wrapper"]/div/div[1]/header/div[2]/a[7]
    sleep   3s
    Click Element   //*[@id="gatsby-focus-wrapper"]/main/div[2]/div/div[1]/div/div/div/div/div[2]/div[1]/div[1]/p[2]/a
    sleep   3s
    wait until page contains    report
    Close Browser