*** Settings ***
Library  SeleniumLibrary
Resource  ./HeaderPage.robot

*** Variables ***
${search_result} =  results for

*** Keywords ***
Verify Search Results
    Page Should Contain  ${search_result} ${search_text.bcd}

Verify Search Results 2
    Page Should Contain  ${search_result} ${search_text.abc}

Verify Advanced Search Results
    Page Should Contain  ${search_result} ${search_text.edf}

Verify Condition New
    Page Should Contain  ${search_result} ${search_text.mob}
    Page Should COntain  New


