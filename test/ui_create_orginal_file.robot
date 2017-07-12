*** Settings ***


Library    Selenium2Library

*** Test Cases ***

Should display result 'document is created' when user inputs valid document id
    Open browser    http://127.0.0.1:8080/    GC
    Input text      input_document_id   1
    Click Button    button_submit
    Wait Until Page Contains   document is created
    Close browser

Should display result 'document is not found' when user inputs invalid document id
    Open browser    http://127.0.0.1:8080/    GC
    Input text      input_document_id   2
    Click Button    button_submit
    Wait Until Page Contains   document is not found
    Close browser

Should display result 'upload failed' when uploading error occurred
    Open browser    http://127.0.0.1:8080/    GC
    Input text      input_document_id   3
    Click Button    button_submit
    Wait Until Page Contains   upload failed
    Close browser