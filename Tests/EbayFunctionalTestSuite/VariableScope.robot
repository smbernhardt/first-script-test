
#local scope
#Test cases and user keywords have a local variable scope
#that is  not seen by other tests or keywords.

*** Settings ***

*** Variables ***

${VARIABLE_DEMO} =  This is GLOBAL variable

*** Test Cases ***
This is demo test 1
    ${variable_demo} =  Set Variable  This is TESTCASE variable
    Log ${VARIABLE_DEMO}

This is demo test 2
    Log ${VARIABLE_DEMO}

This is demo test 3
    Log ${VARIABLE_DEMO}

    *** Keywords ***
This is demo keyword
    [Arguments]  ${Variable_demo}= This is KEYWORD variable
    Log  $${VARIABLE_DEMO}