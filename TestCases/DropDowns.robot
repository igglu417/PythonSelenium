*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}          https://demo.nopcommerce.com/digital-downloads
${browser}       chrome
*** Test Cases ***

Handling DropDowns
    Open browser    ${url}      ${browser}
    Maximize browser window
    Select from list by label    products-orderby   Price: High to Low
    sleep   10s
    #    select z to A
    Select from list by index    products-orderby   2

    # List Box
#    Select from list by value

    # unselect can also be used
*** Keywords ***
