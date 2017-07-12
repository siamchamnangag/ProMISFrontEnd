*** Settings ***


Library    Selenium2Library

*** Test Cases ***

Should display result 'document is created' when user inputs valid document id
    Input document id to view a result    1    document is created

Should display result 'document is not found' when user inputs invalid document id
    Input document id to view a result    2    document is not found

Should display result 'upload failed' when uploading error occurred
    Input document id to view a result    3    upload failed

*** Keywords ***
Input document id to view a result
    [Arguments]    ${document_id}    ${result_message}
    Open browser    http://127.0.0.1:8080/    GC
    Input text      input_document_id   ${document_id}
    Click Button    button_submit
    Wait Until Page Contains   ${result_message}
    Close browser