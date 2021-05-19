*** Settings ***
Library  SeleniumLibrary

Resource    ../Globalvariables/BoundaryVariables.robot
Resource    ../Globalvariables/Credentials.robot
*** Keywords ***
check without input
    Go To   ${browser}
    sleep   3s
    Click Element   ${signin}
    sleep   3s
    Reload Page
    sleep   3s
check for lower boundary
    Input Text    ${email}  ${lbemail}
    sleep   3s
    Input Text   ${password}  ${lbpass}
    sleep   3s
    Click Element   ${signin}
    sleep   3s
    Handle Alert
    sleep   5s
    Reload Page
    sleep   3s
check for upper boundary
    Input Text  ${email}    ${upemail}
    sleep  3s
    Input Text  ${password}  ${uppass}
    sleep   3s
    Click Element  ${signin}
    sleep   3s
    Handle Alert
    sleep   3s
    Reload Page
    sleep   3s
check for invalid password and valid mail
    Input Text  ${email}    ${cemail}
    sleep   3s
    Input Text  ${password}  ${wpass}
    sleep   3s
    Click Element  ${signin}
    sleep   3s
    Handle Alert
    sleep   3s
    Reload Page
    sleep   3s
check for invalid mail and valid password
    Input Text  ${email}    ${wemail}
    sleep   3s
    Input Text  ${password}  ${cpass}
    sleep   3s
    Click Element   ${signin}
    sleep   3s
    Handle Alert
    sleep   3s
    Reload Page
    sleep   3s
check for valid mail and password
    Input Text    ${email}  ${cemail}
    sleep  3s
    Input Text   ${password}  ${cpass}
    sleep  3s
    Click Element   ${signin}
    Sleep   20s
    wait until page contains    Contact Information
    sleep  5s
Validation test for lower boundary
    Go TO  ${browser}
    sleep   3s
    Input Text   ${email}  ${lbemail}
    sleep   3s
    Input Text  ${password}  ${lbpass}
    sleep   5s
    Click Element   ${signin}
    sleep   5s
    Handle Alert    ACCEPT
    sleep   3s
    Reload Page
    sleep   3s
Validation test for upper boundary
    Input Text   ${email}    ${upemail}
    sleep  3s
    Input Text  ${password}  ${uppass}
    sleep   3s
    Click Element    ${signin}
    sleep   5s
    Handle Alert    ACCEPT
    sleep   3s
    Reload Page
    sleep   3s
Validation for invalid password and valid mail
    Input Text   ${email}    ${cemail}
    sleep   3s
    Input Text  ${password}  ${wpass}
    sleep   3s
    Click Element    ${signin}
    sleep   5s
    Handle Alert    ACCEPT
    sleep   3s
    Reload Page
    sleep   3s
Validation test for invalid mail and valid password
    Input Text   ${email}   ${wemail}
    sleep   3s
    Input Text  ${password}  ${cemail}
    sleep   3s
    Click Element    ${signin}
    sleep   5s
    Handle Alert    ACCEPT
    sleep   3s
check without input(forgot)
    Go To   ${browser}
    sleep   3s
    Click Element  ${forpassword}
    sleep   3s
    Click Element   ${fok}
    sleep   3s
    Reload Page
    sleep   3s
check for lower boundary(forgot)
    Click Element   ${forpassword}
    sleep   3s
    Input Text    ${femail}  ${lbemail}
    sleep   3s
    Click Element   ${fok}
    sleep   3s
    Reload Page
    sleep   3s
check for upper boundary(forgot)
    Click Element   ${forpassword}
    sleep   3s
    Input Text    ${femail}  ${upemail}
    sleep   3s
    Click Element   ${fok}
    sleep   3s
    Reload Page
    sleep   3s
check for invalid mail
    Click Element   ${forpassword}
    sleep   3s
    Input Text   ${femail}  ${invalidemail}
    sleep   3s
    Click Element   ${fok}
    sleep   3s
    Reload Page
    sleep   3s
check for incorrect mail
    Click Element   ${forpassword}
    sleep   3s
    Input Text    ${femail}  ${wemail}
    sleep   3s
    Click Element   ${fok}
    sleep   3s
    Reload Page
    sleep   3s
validation test with input
    Go To   ${browser}
    sleep   3s
    Click Element   ${forpassword}
    sleep   5s
    Input Text    ${femail}  ${invalidemail}
    sleep   2s
    Click Element   ${fok}
    sleep   2s
    wait until page contains    Invalid email format
    sleep   5s
    Reload Page
    sleep   3s
validation test with out input
    Click Element   ${forpassword}
    sleep   5s
    Click Element   ${fok}
    sleep   2s
    wait until page contains    Invalid email format
    sleep   5s
    reload page
    sleep   3s
validation test for incorrect mail
    Click Element   ${forpassword}
    sleep   5s
    Input Text    ${femail}  ${wemail}
    sleep   5s
    Click Element   ${fok}
    sleep   2s
    wait until page contains    No record of your id in veridic solutions
    sleep   3s
    Reload Page
validation test for correct mail
    Click Element   ${forpassword}
    sleep   5s
    Input Text      ${femail}   ${cemail}
    sleep   5s
    Click Element   ${fok}
    sleep   2s
    wait until page contains   Please try again
    sleep   3s
Personal Information
    Go To   ${browser}
    sleep   3s
    Input Text   ${email}  ${cemail}
    sleep  3s
    Input Text  ${password}  ${cpass}
    sleep  3s
    Click Element  ${signin}
    sleep   30s
    Click Element  ${Edit}
    sleep   3s
    Click Element  ${PIButton}
    sleep   5s
    press keys  ${firstname}    CTRL+BACKSPACE
    sleep   5s
    Input Text  ${firstname}      &{data} [Firstname]
    sleep   5s
    press keys   ${middlename}  CTRL+BACKSPACE
    sleep   5s
    Input Text  ${middlename}    &{data} [Middlename]
    sleep   5s
    press keys  ${lastname}   CTRL+BACKSPACE
    sleep   5s
    Input Text  ${lastname}   &{data} [Lastname]
    sleep   5s
    press keys  ${phno}   CTRL+BACKSPACE
    sleep   5s
    Input Text  ${phno}   9999999999
    sleep   5s
    Click Element   ${gender}
    sleep   5s
    Click Element   ${genselection}
    sleep   5s
    Click Element   ${marital status}
    sleep   7s
    Click Element  ${marital status selection}
    sleep   7s
    press keys  ${line1}  CTRL+BACKSPACE   CTRL+BACKSPACE
    sleep   7s
    Input Text  ${line1}    Vedullapalli
    sleep   7s
     press keys  ${line2}  CTRL+BACKSPACE   CTRL+BACKSPACE
    sleep   10s
    Input Text     ${line2}    Ragudhevapuram
    sleep   10s
    press keys  ${counrtysel}  CTRL+BACKSPACE   CTRL+BACKSPACE
    sleep   10s
    Input Text  ${counrtysel}   India
    sleep   7s
    press keys  ${statesel}  CTRL+BACKSPACE     CTRL+BACKSPACE
    sleep   7s
    Input Text  ${statesel}  Andhra Pradesh
    sleep   7s
    press keys  ${DOB}  CTRL+BACKSPACE  CTRL+BACKSPACE  CTRL+BACKSPACE
    sleep   10s
    Input Text   ${DOB}  08/08/2002
    sleep   10s
    press keys  ${city}  CTRL+BACKSPACE     CTRL+BACKSPACE
    sleep   10s
    Input Text   ${city}  Rajamahendravaram
    sleep   10s
    press keys  ${zip}  CTRL+BACKSPACE      CTRL+BACKSPACE
    sleep   7s
    Input Text  ${zip}  533287








