*** Settings ***
Library  SeleniumLibrary
*** Variables ***
*** Keywords ***
*** Test Cases ***
open google
    Open Browser  https://www.google.co.in/   gc
    sleep   2s
    Input Text   //html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input    robotframework.org
    sleep   2s
    Click Element   //html/body/div[1]/div[3]/form/div[1]/div[1]/div[2]/div[2]/ul/li[1]/div/div[2]/div[1]/span
    sleep   2s
    Click Element   //*[@id="rso"]/div[1]/div/div/div/div/div/div[1]/a/h3
    sleep   2s
    Close Browser