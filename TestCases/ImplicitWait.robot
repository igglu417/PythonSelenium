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
    Select radio button    Gender   M
    ${imp_wait}     Get selenium implicit wait

    Log to console    Imp wait is ${imp_wait}

    Set selenium implicit wait    10s

    ${imp_wait}     Get selenium implicit wait
    Log to console    Imp wait is ${imp_wait}
    input text      name:FirstName1      David
    Input text      name:LastName       John
    Input text      id:Email            anhc@gmail.com
    Input text      id:Password         davidjohn
    Input text      id:ConfirmPassword  davidjohn

