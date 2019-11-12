*** Settings ***
Documentation           Robot framework demo
Library                 SeleniumLibrary
Resource                ../Resources/LoginKeywords.robot
Resource                ../Resources/PurchaseProductKeywords.robot
Resource                ../Resources/Browser.robot
Resource                ../Resources/SearchFilterKeywords.robot
Variables               ../PageObjects/PaymentPage.py

*** Variables ***
${Browser}              chrome
${SiteUrl}              https://www.hepsiburada.com
${product_name}         bluetooth kulaklık
${Email}                test44@mailinator.com
${Password}             24af3535
${min_price}            750
${max_price}            1000

*** Test Cases ***
TestCase2
    Open Url                    ${SiteUrl}  ${Browser}
    Search Product              ${product_name}
    Submit Search
    Select Brand
    Select Color
    Enter min price             ${min_price}
    Enter max price             ${max_price}
    Submit Price
    Select Product
    Check Product Comments
    Close Cookie Alert
    Like first comment
    Assert Review
    Close my Browsers



