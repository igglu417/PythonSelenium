# Created by ikalkati at 18-04-2024
*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Verify text of alert box
    Alert should be present    I am an alert box!
*** Variables ***
${url}      https://testautomationpractice.blogspot.com/
${browser}  chrome

*** Test Cases ***
handle_alert_test
    Open browser    ${url}      ${browser}
    Maximize browser window
    Click element    (//button[normalize-space()='Alert'])[1]   #pops up alert
    Sleep    3
#    Handle alert    ACCEPT
#    Handle alert    DISMISS
#    Handle alert    LEAVE       # keeps the alert window open
#    Sleep    3
#    Verify text of alert box
    Alert should not be present    I am an alert box!   # negative scenario