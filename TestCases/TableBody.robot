*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}          https://testautomationpractice.blogspot.com/
${browser}       chrome

*** Test Cases ***
TableBody
    Open browser    ${url}      ${browser}
    ${rows_count}=     Get element count       //table[@name='BookTable']/tbody/tr
    ${column_count}=     Get element count       //table[@name='BookTable']/tbody/tr[1]/th
    Log to console      Row count is ${rows_count}
    Log to console    Column count is ${column_count}
    ${data}=    get text        //table[@name='BookTable']/tbody/tr[4]/td[2]
    log to console      ${data}
    Table column should contain     //table[@name='BookTable']      2       Author
    Table row should contain        //table[@name='BookTable']      4       Learn JS
    ${verify}=  Table cell should contain       //table[@name='BookTable']      5   2   Mukesh
    Log to console    ${verify}
    Table header should contain    //table[@name='BookTable']   BookName







*** Keywords ***
