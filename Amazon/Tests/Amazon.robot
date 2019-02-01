*** Settings ***

Resource  ../Resources/Common.robot  # necessary for Setup & Teardown
Resource  ../Resources/AmazonWeb.robot  # necessary for lower level keywords in test cases

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***

${BROWSER} =            chrome
${BASE_URL} =           https://www.amazon.com
${SEARCH_STRING} =      Ferrari 458

*** Test Cases ***

Logged out user should be able to search for products
    [Documentation]     This is some basic info about the test
    [Tags]              Smoke

    AmazonWeb.Search for Products

Logged out user should be able to view product

    [Tags]              Smoke

    AmazonWeb.Search for Products
    AmazonWeb.Select Product from Search Results

Logged out user should be able to add product to cart

    [Tags]              Smoke

    AmazonWeb.Search for Products
    AmazonWeb.Select Product from Search Results
    AmazonWeb.Add Product to Cart

Logged out user should be asked to sign in to check out
    [Documentation]     This is some basic info about the test
    [Tags]              Smoke

    AmazonWeb.Search for Products
    AmazonWeb.Select Product from Search Results
    AmazonWeb.Add Product to Cart
    AmazonWeb.Begin Checkout
