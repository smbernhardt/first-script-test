*** Settings ***
Library  SeleniumLibrary

*** Variables ***
&{url}  qa=http://qa.demo.com  uat=http://uat.demo.com  dev=http://dev.demo.com

*** Keywords ***
Start TestCase
    Open Browser  http://ebay.com  chrome
    Maximize Browser Window
    Sleep  4s

Finish TestCase
    Close Browser