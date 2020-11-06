*** Settings ***
Library          SeleniumLibrary
Test Teardown    Close All Browsers


*** Test Cases ***
Check wiki search
    Given you are on Wikipedia home page:    https://en.wikipedia.org/wiki/Main_Page
    When type coronavirus into the search box
    And hit enter key
    And choose the first result
    Then you will be taken to:    https://en.wikipedia.org/wiki/Coronavirus
    And you will see "Coronavirus disease 2019 (COVID-19)" section in the page


*** Keywords ***
Given you are on Wikipedia home page:
    [Arguments]     ${url}
    Open Browser    ${url}    browser=headlesschrome

When type coronavirus into the search box
    Input Text    id:searchInput    coronavirus

hit enter key
    Press Keys    None    RETURN

choose the first result
    ${elements}=    Get WebElements    xpath://*[@title="Coronavirus"]
    Click Element    ${elements}[0]

you will be taken to:
    [Arguments]           ${url}
    Location Should Be    ${url}

you will see "${txt}" section in the page
    Element Text Should Be    id:Coronavirus_disease_2019_(COVID-19)    ${txt}

