*** Settings ***
Library     SeleniumLibrary
*** Variables ***
*** Keywords ***
*** Test Cases ***
youtube
    Open Browser    https://www.youtube.com/    gc
    sleep   3s
    maximize browser window
    sleep   3s
    Input Text     robotframework
    sleep   3s
    Click Element    //*[@id="search-icon-legacy"]
    sleep   3s
    Click Element  //*[@id="description-text"]
    sleep   3s
    Close Browser
