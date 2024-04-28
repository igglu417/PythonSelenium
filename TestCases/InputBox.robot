*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          https://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    [Documentation]   Perform basic element checks in UI
    Open browser    ${url}      ${browser}
    Maximize browser window
    title should be     nopCommerce demo store
    Click link      //a[normalize-space()='Log in']
    # visibility status
    ${"email_txt"}  Set variable    id:Email
    Element should be visible    ${"email_txt"}
    #enabled
    Element should be enabled    ${"email_txt"}
    # provide value
    Input text      ${"email_txt"}      JohnDavid@gmail.com
    Sleep    5
    Clear element text    ${"email_txt"}
    sleep    3
    Close browser
*** Keywords ***
