*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    http://127.0.0.1:5000

*** Test Cases ***
Plus Two Numbers
    Create Session    mysession    ${BASE_URL}    verify=False
    ${resp}=    Get Request    mysession    /plus/5/6
    Should Be Equal As Strings    ${resp.content.decode()}    11
    Should Be Equal As Integers   ${resp.status_code}    200