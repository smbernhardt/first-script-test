*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/Page Objects/HeaderPage.robot
Resource  ../../Resources/Page Objects/SearchResultsPage.robot

Test Setup  CommonFunctionality.Start TestCase
Test Teardown  CommonFunctionality.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    HeaderPage.Input Search Text and Click Search
    SearchResultsPage.Verify Search Results

Verify basic search functionality for eBay 2
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    HeaderPage.Input Search Text 2 and Click Search
    SearchResultsPage.Verify Search Results 2

Verify advanced search functionality
    [Documentation]  This test case verifies the advanced search
    [Tags]  Functional

    HeaderPage.Input Advanced Search Text and Click Search
    SearchResultsPage.Verify Advanced Search Results

Filter Results by Condition
    [Documentation]  This test verifies filter conditions
    [Tags]  Functional

    HeaderPage.Filter Results by Condition
    SearchResultsPage.Verify Condition New


