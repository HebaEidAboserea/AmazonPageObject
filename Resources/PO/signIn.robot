*** Settings ***
Library    Selenium2Library    

*** Keywords ***
checked product
    Click link    id:hlb-ptc-btn-native
    
verify signin process
    Wait Until Page Contains    Sign-In