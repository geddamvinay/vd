*** Settings ***
Library  SeleniumLibrary
*** Keywords ***
Begin Web Test
    Open Browser    about:blank  headlesschrome
    sleep   5s
    maximize browser window
End Web Test
    sleep   5s
    Close Browser
