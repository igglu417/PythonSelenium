# Created by ikalkati at 20-04-2024
*** Settings ***
Library     SeleniumLibrary
*** Keywords ***

*** Variables ***
${url}      https://demo.automationtesting.in/Windows.html
${browser}  chrome

*** Test Cases ***
TabbedWindowTest
    Open browser    ${url}      ${browser}
    Maximize browser window
    Click element    //*[@id="Tabbed"]/a/button
    Sleep    3s
    Switch window    new
    Click element    //*[@id="main_navbar"]/ul/li[3]/a/span
    Sleep    3s
    Switch window    main
#    Click element    //*[@id="dismiss-button"]/div/span
    ${title}    Get title
    Log to console  ${title}
    Sleep    3s
    Close all browsers