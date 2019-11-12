*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/HomePage.py
Variables  ../PageObjects/SearchPage.py
Variables  ../PageObjects/ProductDetailPage.py
Resource                ../Resources/Browser.robot

*** Keywords ***
Search Product
    [Arguments]  ${Data}
    Input Text    ${product_search_box}  ${Data}

Submit Search
    click button    ${product_search_button}

Enter min price
    [Arguments]  ${Data}
    Scroll Element Into View        ${price_min}
    click element       ${price_min}
    Input Text      ${price_min}    ${Data}

Enter max price
    [Arguments]  ${Data}
    click element       ${price_max}
    Input Text      ${price_max}    ${Data}

Submit Price
    Wait until Element is Visible       ${price_submit}
    click element        ${price_submit}

Select Color
    Scroll Element Into View        ${color_grey}
    Wait until Element is Visible       ${color_grey}
    click element      ${color_grey}

Select Product
    Wait until Element is Visible       ${classified_list}
    click element       ${classified_list}

Select Brand
    Scroll Element Into View        ${jbl}
    Wait until Element is Visible       ${jbl}
    click element       ${jbl}

Check Product Comments
    Wait until Element is Visible       ${comment_link}
    click element       ${comment_link}

Close Cookie Alert
    Scroll Element Into View        ${cookie_close}
    Wait until Element is Visible       ${cookie_close}
    click element       ${cookie_close}

Like first comment
    Scroll Element Into View        ${like_comment}
    Wait until Element is Visible       ${like_comment}
    click element       ${like_comment}

Assert Review
    Check Element Visible       ${review_success}






