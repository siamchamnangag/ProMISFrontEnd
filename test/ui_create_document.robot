*** Settings ***
Library    Selenium2Library
Test Teardown    Close Browser

*** Variables ***
${BASE_SERVER}    http://127.0.0.1:8080/

*** Test Cases ***

document is created (document_id = 1, user = NGOLAMA)
    Input user and document id to view a success result    NGOLAMA    1    document is created

document is not found (document_id = 2, user = NGOLAMA)
    Input user and document id to view a failure result    NGOLAMA    2    document is not found

user not found (document_id = 3, user = XXX)
    Input user and document id to view a failure result    XXX    3    User not found

upload failed (document_id = 4, user = NGOLAMA)
    [Tags]    dev
    Input user and document id to view a failure result    NGOLAMA    4    upload failed

*** Keywords ***
Input user and document id to view a success result
    [Arguments]     ${user}    ${document_id}    ${result_message}
    Open browser    ${BASE_SERVER}    chrome
    Select Radio Button    optradio    ${user}
    Input text      input_document_id   ${document_id}    
    Click Button    button_submit
    Wait Until Element Is Visible    alert_success
    Wait Until Element Contains   alert_success   ${result_message}
    Capture Page Screenshot

Input user and document id to view a failure result
    [Arguments]     ${user}    ${document_id}    ${result_message}
    Open browser    ${BASE_SERVER}    chrome
    Select Radio Button    optradio    ${user}
    Input text      input_document_id   ${document_id}    
    Click Button    button_submit
    Wait Until Element Is Visible    alert_failed
    Wait Until Element Contains   alert_failed   ${result_message}
    Capture Page Screenshot

