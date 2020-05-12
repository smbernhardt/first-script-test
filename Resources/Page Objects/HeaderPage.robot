*** Settings ***
Library  SeleniumLibrary

*** Variables ***


&{search_text}  abc=book  bcd=travel  edf=apple  mob=mobile

*** Keywords ***
Input Search Text and Click Search
    Input Text  xpath://*[@id="gh-ac"]  ${search_text.bcd}
    Press Keys  xpath://*[@id="gh-btn"]  RETURN

Input Search Text 2 and Click Search
    Input Text  xpath://*[@id="gh-ac"]  ${search_text.abc}
    Press Keys  xpath://*[@id="gh-btn"]  RETURN

Input Advanced Search Text and Click Search
    Click Element  xpath://*[@id="gh-as-a"]
    Input Text  xpath://*[@id="_nkw"]  ${search_text.edf}
    Press Keys  xpath://*[@id="adv_search_from"]/fieldset[1]/div[3]/button  RETURN

Filter Results by Condition
    Input Text  xpath://*[@id="gh-ac"]  ${search_text.mob}
    Press Keys  xpath://*[@id="gh-btn"]  RETURN
    Click Element  xpath://*[@id="s0-13-11-5-1[0]-75[1]-14"]/button
    Sleep  3s
    Mouse Down  xpath://*[@id="s0-13-11-5-1[0]-75[1]-14-content-menu"]
    Click Element  xpath://*[@id="s0-13-11-5-1[0]-75[1]-14-content-menu"]/a[2]