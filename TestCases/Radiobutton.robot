*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          https://savkk.github.io/selenium-practice/form/

*** Test cases ***
Testing Radio Buttons and check boxes
    Open browser     ${url}      ${browser}
    maximize browser window
    set selenium speed      2s
    # ----------SELECTING RADIO BUTTONS -----------
#    click element     //input[@name='sex'][2]
    select radio button     sex     female
    select radio button     exp     5
    # ---------SELECTING CHECK BOXES --------------
    select checkbox     BlackTea
    select checkbox     RedTea
    close browser
*** Keywords ***