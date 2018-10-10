*** Settings ***
Library    SeleniumLibrary
Resource   C://Users//Antti//PycharmProjects//git-demo1//Resources//PO/LandingPage.robot


*** Variables ***
${SEARCH_BAR} =    xpath=//*[@id="nav-search"]/form/div[2]/div/input

*** Keywords ***




Search for Product

    LandingPage.Load
    ${ReturnedInfo} =   LandingPage.Verify Page Loaded
    Input Text   id=twotabsearchtextbox    Ferrari 458
    Click Button    ${SEARCH_BAR}
    Wait Until Page Contains    "Ferrari 458"
    Log   ${ReturnedInfo}


Select product from search results
    Click Link    css=#result_2 > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > a:nth-child(1)
    Wait Until Page Contains   Back to search results

Add product to cart
    Click Button    id=add-to-cart-button
    Wait Until Page Contains    Added to Cart

Beging check out
    Click Link   xpath=//*[@id="hlb-ptc-btn-native"]
    Sleep    3s
    ${present}=  Run Keyword And Return Status    Page Should Contain Element   id=siAddCoverage-announce
    Run Keyword If    ${present}     Click Button     id=siNoCoverage-announce    # ELSE    Input Text    id=ap_email    antti.j.kukkonen@gmail.com
    Sleep   3s
    Input Text    id=ap_email    antti.j.kukkonen@gmail.com
    #log to console    ${DATE}


