*** Settings ***
Library    SeleniumLibrary
Variables    ../resources/variables.py

*** Keywords ***
Check if main page is opened
    location should be    https://leaddesk.com/
    element text should be    class:title    Center of Customer Conversations

Click products link
    Click Element       //a[contains(text(),'Products')]
    location should be    https://leaddesk.com/software/?ref=menu
    element should be visible    //h1[text()="Want to close more?"]
    element should be visible    //p[text()="Try LeadDesk. It’s a complete cloud software for outbound sales, inbound sales and customer service."]

Click status link
    Click Element       //a[contains(text(),'Status')]
    location should be    https://status.leaddesk.com/
    element should be visible    class:sp-logo
    wait until page contains    To review our knowledge base & FAQs

