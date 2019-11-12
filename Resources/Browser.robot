*** Settings ***
Documentation           Assertions
Library                 SeleniumLibrary

*** Keywords ***
Open Url
    [Arguments]  ${SiteUrl}   ${Browser}
    open browser    ${SiteUrl}    ${Browser}

Check Element Visible
    [Arguments]  ${Locator}
    Wait until Element is Visible   ${Locator}
    Element Should Be Visible       ${Locator}

Close my Browsers
    close all browsers
