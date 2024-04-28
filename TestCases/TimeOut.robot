*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}          https://demowebshop.tricentis.com/register
${browser}      chrome

*** Keywords ***

*** Test Cases ***

Registration
    Open browser    ${url}      ${browser}
    Maximize browser window
    # finds default timeout
    ${timeout}      Get selenium timeout
    Log to console    Default Timeout is ${timeout}
    Set selenium timeout    10s
    Wait until page contains    Register       # Default 5s THEN test fails
    Select radio button    Gender   M
    input text      name:FirstName      David
    Input text      name:LastName       John
    Input text      id:Email            anhc@gmail.com
    Input text      id:Password         davidjohn
    Input text      id:ConfirmPassword  davidjohn
    # finds new timeout, if set
    ${timeout}      Get selenium timeout
    Log to console    New timeout is ${timeout}
