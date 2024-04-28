# Created by ikalkati at 27-04-2024
*** Settings ***
Library     SeleniumLibrary
*** Keywords ***

*** Variables ***
${url}          https://www.google.co.in
${browser}      chrome
*** Test Cases ***
Guild
    Open browser    ${url}      ${browser}
    Maximize browser window
    ${loc}  Get location
    Log to console  ${loc}

    sleep   3s

    Go to    https://www.bing.com
    ${loc}  Get location
    Log to console    ${loc}

    sleep   3s

    Go back
    ${loc}  Get location
    Log to console    ${loc}
