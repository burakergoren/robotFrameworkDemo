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
${Email}                test44@mailinator.com
${Password}             24af3535
${product_detail}       https://www.hepsiburada.com/fifa-20-turkce-menu-ps4-oyun-p-HBV00000NCAQJ
${product_name}         bluetooth kulaklık

*** Test Cases ***
TestCase1
    Open Url                    ${SiteUrl}  ${Browser}
    Go Login Page
    Click Login
    Enter Email                 ${Email}
    Enter Password              ${Password}
    Submit Login
    Go Product Url              ${product_detail}
    Add to cart
    Purchase
    Go to payment step
    Check Element Visible       ${bank_card_option}
    Close my Browsers
