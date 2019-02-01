*** Settings ***

Library                         SeleniumLibrary

*** Variables ***

${LANDING_PAGE_HEADER} =        Your Amazon.com

*** Keywords ***

Load
    go to                       ${BASE_URL}

Verify Page Loaded
    wait until page contains    ${LANDING_PAGE_HEADER}
