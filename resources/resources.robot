*** Settings ***
Library    SeleniumLibrary
Variables    ../resources/variables.py

*** Keywords ***
Open Browser and Maximize
    [Arguments]    ${URL}    ${Browser}
    log    Started test
    open browser    ${URL}    ${Browser}
    maximize browser window
    click link    class:cookie_action_close_header



