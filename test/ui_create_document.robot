*** Settings ***
Library    Selenium2Library
Test Teardown    Close Browser

*** Variables ***
${BASE_SERVER}    http://127.0.0.1:8080/

*** Test Cases ***

document is created (document_id = 1, user = NGOLAMA)
    Input user and document id to view a result    NGOLAMA    1    document is created

document is not found (document_id = 2, user = NGOLAMA)
    Input user and document id to view a result    NGOLAMA    2    document is not found

user not found (document_id = 3, user = XXX)
    Input user and document id to view a result    XXX    3    User not found

upload failed (document_id = 4, user = NGOLAMA)
    Input user and document id to view a result    NGOLAMA    4    upload failed

*** Keywords ***
Input user and document id to view a result
    [Arguments]     ${user}    ${document_id}    ${result_message}
    Open browser    ${BASE_SERVER}    chrome
    Select Radio Button    optradio    ${user}
    Input text      input_document_id   ${document_id}    
    Click Button    button_submit
    Wait Until Page Contains   ${result_message}
    Capture Page Screenshot
