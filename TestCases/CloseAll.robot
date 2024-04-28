# Created by ikalkati at 17-04-2024

*** Settings ***
Library    SeleniumLibrary
*** Keywords ***

*** Variables ***
${url}          https://demo.nopcommerce.com/digital-downloads
${browser}       chrome

*** Test Cases ***
Browser_Closing
    Open browser    ${url}      ${browser}
    Maximize browser window
    title should be     nopCommerce demo store. Digital downloads


    Open browser    ${url}      ${browser}
    Maximize browser window

#    Close browser
#    Close browser - Closes the latest browser that was open
#    Use Close All Browser to close all the browsers that were opened

    Close all browsers