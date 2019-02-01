*** Settings ***

Library                         SeleniumLibrary

*** Variables ***

${SEARCH_RESULT_LINK} =         xpath: //*[@id="result_1"]/div/div/div/div[2]/div[2]/div[1]/a


*** Keywords ***

Verify Search Completed
    wait until page contains    results for "${SEARCH_STRING}"

Click on Product Link
    [Documentation]             Clicks on the second product of the search results
    click link                  ${SEARCH_RESULT_LINK}
