*** Settings ***
Library    Selenium2Library    

*** Keywords ***

load
    Go To    https://www.amazon.com/
     Maximize Browser Window
    
verify page loaded
  Wait Until Page Contains    amazon


