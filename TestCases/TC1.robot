*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    Open browser     ${url}      ${browser}
    LoginToApplication
    Close browser

*** Keywords ***
LoginToApplication
    Click link      //a[normalize-space()='Log in']
    input text      id:Email   sample.email@mail.com
#    input text     locator     value
    Input text      id:Password     Pass123
    Click element    //button[normalize-space()='Log in']
