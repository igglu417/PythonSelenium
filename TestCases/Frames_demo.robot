# Created by ikalkati at 18-04-2024
*** Settings ***
Library     SeleniumLibrary
*** Keywords ***

*** Variables ***
${browser}      chrome
${url}
*** Test Cases ***
Test Frame
    Open browser    ${url}      ${browser}

    Select frame    frameName1
    Click link    linkXPATH
    Unselect frame

    Select frame    FrameName2
    click link      linkXpath
    Unselect frame

    Select frame    FrameName3
    Click link      linkXpath3
    Unselect frame

    Close browser


