*** Settings ***
Library    SeleniumLibrary


*** Keywords ***

Beging web test
    Open Browser     about:blank     ${BROWSER}

End web test
    close browser


