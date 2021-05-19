*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}   https://eficensit-test-8b2e9.web.app/
${signin}    //*[@id="root"]/div/div/div/main/div[2]/div/form/button/span[1]
${email}    //*[@id="email"]
${password}   //*[@id="password"]
${forpassword}  //*[@id="for-pass"]
${femail}   //html/body/div[6]/div[3]/div/div[1]/div/div/input
${fok}  //html/body/div[6]/div[3]/div/div[2]/button[2]/span[1]
${Edit}     //*[@id="root"]/div/div/div/div/main/div[3]/div[2]/div/div/div/div/div[2]/div/button
${PIButton}   //*[@id="root"]/div/div/div/div/main/div[3]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div[1]/div/div/div[1]/table/tbody/thead/tr/th[9]/button
${firstname}   //*[@id="outlined-size-small"]
${middlename}  //html/body/div[1]/div/div/div/div/main/div[3]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div[1]/div/div/div[2]/div/div/div/form/div[1]/div[2]/div/div/input
${lastname}  //html/body/div[1]/div/div/div/div/main/div[3]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div[1]/div/div/div[2]/div/div/div/form/div[1]/div[3]/div/div/input
${phno}  //html/body/div[1]/div/div/div/div/main/div[3]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div[1]/div/div/div[2]/div/div/div/form/div[1]/div[5]/div/div/input
${gender}    //*[@id="mui-component-select-gender"]
${genselection}   //*[@id="menu-gender"]/div[3]/ul/li[3]
${marital status}   //*[@id="mui-component-select-maritalstatus"]
${marital status selection}  //*[@id="menu-maritalstatus"]/div[3]/ul/li[3]
${line1}    //html/body/div[1]/div/div/div/div/main/div[3]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div[1]/div/div/div[2]/div/div/div/form/div[1]/div[8]/div/div/input
${line2}    //html/body/div[1]/div/div/div/div/main/div[3]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div[1]/div/div/div[2]/div/div/div/form/div[1]/div[9]/div/div/input
${counrtysel}  //*[@id="tags-outlined"]
${statesel}     //html/body/div[1]/div/div/div/div/main/div[3]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div[1]/div/div/div[2]/div/div/div/form/div[1]/div[11]/div/div/div/input
${DOB}  //*[@id="date-picker-birthdate"]
${city}  //html/body/div[1]/div/div/div/div/main/div[3]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div[1]/div/div/div[2]/div/div/div/form/div[1]/div[13]/div/div/input
${zip}  //html/body/div[1]/div/div/div/div/main/div[3]/div[2]/div/div/div/div/div[2]/div/div[1]/div/div[1]/div/div/div[2]/div/div/div/form/div[1]/div[14]/div/div/input