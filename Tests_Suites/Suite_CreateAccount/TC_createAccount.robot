*** Settings ***
Resource  ../../Resources/Suite_setup.robot
Resource  ../../Resources/POM/Login_Page/createAccount.robot
Resource  ../../Resources/POM/Main_Page/mainPage.robot

Test Setup     Setup_Suite_Config
Test Teardown  Tear_Down_Configuration  False
Test Template  TC_Create_New_Account


*** Test Cases ***
User needs to create a new account
    [Tags]  create
    [Documentation]  This TC creates a new account for liverpool

    TC_Create_New_Account


*** Keywords ***
TC_Create_New_Account
    [Arguments]  ${newAccount}=true
    mainPage.Load_Main_Page
    createAccount.Load_Initiate_Session_window
    createAccount.Create_new_account  new_user_account10@gmail.com  w3lc0M321
    createAccount.Complete_new_user_information  Pablo  Juan  Solis  male  2/6/1970

