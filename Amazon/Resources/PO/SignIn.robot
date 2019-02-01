*** Settings ***

Library                             SeleniumLibrary

*** Variables ***

${PROTECTION_PLAN_POP_UP} =         css:  .a-size-large.a-spacing-none
${PROTECTION_PLAN_CLOSE_BUTTON} =   css: .a-icon-close
${SIGNIN_PAGE_HEADER} =             xpath:  //h1
${SIGNIN_PAGE_TEXT} =               Sign in

#${POP_UP} =     2 Year Toy Accident Protection Plan
#${SIGNIN_PAGE_HEADER} =    Sign in

*** Keywords ***

Verify Page Loaded
#    sleep  3s
#    wait until page contains  ${POP_UP}
#    sleep  3s
#    click element  css: .a-icon-close
#    sleep  3s
#    wait until page contains  ${SIGNIN_PAGE_HEADER}

#    wait until page contains element    ${PROTECTION_PLAN_POP_UP}
#    sleep                               3s
#    click element                       ${PROTECTION_PLAN_CLOSE_BUTTON}
    page should contain element         ${SIGNIN_PAGE_HEADER}
    element text should be              ${SIGNIN_PAGE_HEADER}   ${SIGNIN_PAGE_TEXT}
