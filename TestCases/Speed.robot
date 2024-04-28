*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}          https://demowebshop.tricentis.com/register
${browser}      chrome

*** Keywords ***

*** Test Cases ***

Registration
    [Tags]    speed
    ${speed}=   Get selenium speed
    Log to console      Speed time is ${speed}
    Open browser    ${url}      ${browser}
    Maximize browser window
    # set speed for every command. DEFAULT speed is 0s
    Set selenium speed    1s
    Select radio button    Gender   M
    input text      name:FirstName      David
    Input text      name:LastName       John
    Input text      id:Email            anhc@gmail.com
    Input text      id:Password         davidjohn
    Input text      id:ConfirmPassword  davidjohn
    ${speed}    Get selenium speed
    Log to console      Speed is ${speed}
