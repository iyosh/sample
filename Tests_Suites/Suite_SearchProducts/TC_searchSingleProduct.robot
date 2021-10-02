*** Settings ***
Resource  ../../Resources/Suite_setup.robot
Resource  ../../Resources/POM/Login_Page/createAccount.robot
Resource  ../../Resources/POM/Main_Page/mainPage.robot
Resource  ../../Resources/POM/SearchResults_Page/searchProducts.robot

Test Setup     Setup_Suite_Config
Test Teardown  Tear_Down_Configuration  False
Test Template  TC_Create_New_Account


*** Test Cases ***
User needs to search products
    [Tags]  searchProduct
    [Documentation]  This TC searches for products

    TC_Search_Products


*** Keywords ***
TC_Create_New_Account
    [Arguments]  ${var}=true
    mainPage.Load_Main_Page
    searchProducts.Search_Product  sofa
    SearchProducts.Narrow_search

