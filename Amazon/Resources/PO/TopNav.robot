*** Settings ***

Documentation               Amazon Top Navigation

Library                     SeleniumLibrary

*** Variables ***

${TOP_NAV_SEARCH_BAR} =     id: twotabsearchtextbox
${TOP_NAV_SUBMIT_BUTTON} =  css: [value='Go']

*** Keywords ***

Search for Products
    Enter Search String
    Submit Search

Enter Search String
    input text              ${TOP_NAV_SEARCH_BAR}  ${SEARCH_STRING}

Submit Search
    click button            ${TOP_NAV_SUBMIT_BUTTON}
