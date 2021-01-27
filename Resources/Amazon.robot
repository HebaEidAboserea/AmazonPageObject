*** Settings ***
Documentation    this test cases for Amazon Website

Library     Selenium2Library  
Resource     PO/LoadingPage.robot
Resource    PO/SearchPage.robot
Resource    PO/product.robot
Resource    PO/Cart.robot
Resource    PO/signIn.robot

*** Keywords ***

    
search for product
     
     LoadingPage.load
     LoadingPage.verify page loaded  
     Input Text    id:twotabsearchtextbox    huawei p30 pro 
     Click Button    id:nav-search-submit-button  
     Wait Until Page Contains    results for "huawei p30 pro"
select product from search results
      SearchPage.search process
      SearchPage.verify search process
add product to Cart
     product.selected product
     Cart.Added Cart 
    
Begin checkout process
     signIn.checked product
     signIn.verify signin process


