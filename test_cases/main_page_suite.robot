*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources.robot
Resource    ../resources/pages/main_page.robot
Variables    ../resources/variables.py

*** Test Cases ***
Open Login Page
    [Setup]    Open browser and Maximize    ${main_page_url}    ${browser}
    [Teardown]    close browser
    Check if main page is opened

Open Products Page
    [Setup]    Open browser and Maximize    ${main_page_url}    ${browser}
    [Teardown]    close browser
    Check if main page is opened
    Click products link

Open Status Page
    [Setup]    Open browser and Maximize    ${main_page_url}    ${browser}
    [Teardown]    close browser
    Click status link


