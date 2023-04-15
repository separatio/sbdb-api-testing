*** Settings ***
Library     RequestsLibrary
Resource    ../resources/sbdb.resource


*** Test Cases ***
Do a basic request
    [Documentation]    Test the JPL Small-Body Database API
    [Tags]    cad api
    When Request Is Done To SBDB
    ${expected}=    Set Variable    200
    Then Request Status Is    ${expected}
