# Created by ikalkati at 28-04-2024
*** Settings ***
Library     SeleniumLibrary
*** Keywords ***
*** Variables ***
${url}          https://opensource-demo.orangehrmlive.com/
${browser}      chrome

*** Test Cases ***
TakeSS
    Open browser    ${url}      ${browser}
    Maximize browser window
    Sleep    5s
    Input text      //input[@placeholder='Username']   Admin
    input text      //input[@placeholder='Password']   admin123

    Capture element screenshot    //img[@alt='company-branding']    Logo.png
    Capture page screenshot     page.jpeg

    sleep    3s

    Close all browsers