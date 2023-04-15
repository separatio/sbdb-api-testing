*** Settings ***
Library     RequestsLibrary


*** Keywords ***
When Request Is Done To SBDB
    ${response}=    GET
    ...    url=https://ssd-api.jpl.nasa.gov/cad.api?des=433&date-min=1900-01-01&date-max=2100-01-01&dist-max=0.2
    Set Suite Variable    ${response}

Then Request Status Is
    [Arguments]    ${expected}
    Status Should Be    expected_status=${expected}
