*** Settings ***


*** Test Cases ***
Argument demo keyword test
    Argument demo keyword  rcv  academy


*** Keywords ***
Argument demo keyword
    [Arguments]   ${arg1}  ${arg2}
    Log  ${arg1}
    Log  ${arg2}
