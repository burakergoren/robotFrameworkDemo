*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/BasketPage.py
Variables  ../PageObjects/DeliveryInfoPage.py
Variables  ../PageObjects/PaymentPage.py
Variables  ../PageObjects/ProductDetailPage.py
Variables  ../PageObjects/HomePage.py

*** Keywords ***
Add to cart
    click button   ${add_to_cart}

Purchase
    Wait until Element is Visible   ${purchase}
    click button   ${purchase}

Go to payment step
    Wait until Element is Visible   ${go_to_payment_step}
    click button   ${go_to_payment_step}

Go Product Url
    [Arguments]  ${product_detail}
    Wait until Element is Visible       ${myAccountButton}
    Go To       ${product_detail}