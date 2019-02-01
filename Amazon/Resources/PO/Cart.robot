*** Settings ***

Library                         SeleniumLibrary

*** Variables ***

${CART_CONFIRMATION} =          Added to Cart
${CART_CHECKOUT} =              css: #hlb-ptc-btn-native

*** Keywords ***

Verify Product Added
    wait until page contains    ${CART_CONFIRMATION}

Proceed to Checkout
    click link                  ${CART_CHECKOUT}
