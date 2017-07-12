*** Settings ***


Library    Selenium2Library

*** Test Cases ***

document is created (document_id = 1)
    Input document id to view a result    1    document is created

document is not found (document_id = 2)
    Input document id to view a result    2    document is not found

upload failed (document_id = 3)
    Input document id to view a result    3    upload failed

*** Keywords ***
Input document id to view a result
    [Arguments]    ${document_id}    ${result_message}
    Open browser    http://127.0.0.1:8080/    GC
    Input text      input_document_id   ${document_id}
    Click Button    button_submit
    Wait Until Page Contains   ${result_message}
    Capture Page Screenshot
    Close browser