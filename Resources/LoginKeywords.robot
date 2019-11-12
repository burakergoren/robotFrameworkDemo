*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/HomePage.py
Variables  ../PageObjects/LoginPage.py

*** Keywords ***
Go Login Page
    click element       ${myAccountButton}

Click Login
    Wait until Element is Visible   ${loginButton}
    click element       ${loginButton}

Enter Email
    [Arguments]  ${Email}
    Input Text    ${input_email}  ${Email}

Enter Password
    [Arguments]  ${Password}
    Input Text    ${input_password}   ${Password}

Submit Login
    Wait until Element is Visible   ${submit_button}
    click button  ${submit_button}





