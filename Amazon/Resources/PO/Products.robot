*** Settings ***

Library                         SeleniumLibrary

*** Variables ***

${PRODUCT_VERIFICATION_TEXT} =  Back to search results
${PRODUCT_ADD_TO_CART} =        id: add-to-cart-button

*** Keywords ***

Verify Page Loaded
    wait until page contains    ${PRODUCT_VERIFICATION_TEXT}

Add to Cart
    click button                ${PRODUCT_ADD_TO_CART}
