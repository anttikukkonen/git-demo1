*** Settings ***
Resource   ../Resources/Common.robot
Resource   ../Resources/Amazon.robot
Library    DateTime
Library   Dialogs
Test Setup   Common.Beging Web Test
Test Teardown  Common.End web test

# robot -d results tests/amazon.robot

*** Variables ***
${Time} =   Get Current Date
${DATE}=    Get Current Date    result_format=timestamp
${BROWSER} =  firefox

*** Test Cases ***

Search product
    ${new_browser} =  Get Selection From User   Which browser?   chrome    ie   firefox
    Set Global Variable   ${BROWSER}    ${new_browser}
    Amazon.Search For product


User must sign in to check out
    [Tags]  test2
    Amazon.Search For product
    Amazon.Select product from search results
    Amazon.Add product to cart
    Amazon.Beging check out

Feature 2 Test
    Log    feat2 test






