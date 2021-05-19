*** Settings ***
Library  SeleniumLibrary
*** Variables ***
*** Keywords ***
*** Test Cases ***
amazon
    Open Browser  https://www.amazon.com
    sleep   3s
    maximize browser window
    sleep   3s
    Click Element     //*[@id="nav-link-accountList"]
    sleep   3s
   # wait until page contains    Email
    #sleep   3s
    Click Element   //*[@id="continue"]
    sleep   2s
    wait until page contains  Enter
    sleep   2s
    Close Browser