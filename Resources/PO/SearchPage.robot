*** Settings ***
Library    Selenium2Library    

*** Keywords ***
search process
        Click image   xpath://*[@id="search"]/div[1]/div[2]/div/span[3]/div[2]/div[2]/div/span/div/div/div[2]/div[1]/div/div/span/a/div/img  
verify search process
        Wait Until Page Contains   huawei
