*** Settings ***


Library    Selenium2Library

*** Test Cases ***

Should display result 'document is created' when user inputs valid doucment id
    Open browser    http://127.0.0.1:8080/    GC
    Input text      input_document_id   1
    Click Button    button_submit
    Wait Until Page Contains   document is created
    Close browser