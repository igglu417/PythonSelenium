# Created by ikalkati at 20-04-2024
*** Settings ***
Library     SeleniumLibrary
*** Keywords ***

*** Test Cases ***
MultipleBrowsers
    Open browser      https://www.google.co.in      chrome
    Maximize browser window

    sleep   3s

    Open browser    https://www.bing.com        edge
    Maximize browser window

    Switch browser    1
    ${title_1}  Get title

    Switch browser    2
    ${title_2}  Get title

    Close all browsers