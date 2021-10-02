*** Settings ***
Documentation       Setup main project configuration
Library             SeleniumLibrary  screenshot_root_directory=Screenshots
Library            ./commons.py

*** Variables ***
# Test Execution Configuration
${SELENIUM_SPEED}           0.1
${TIMEOUT}                  120 seconds
${WAIT_LOW}                 15 seconds
${WAIT_MEDIUM}              30 seconds
${WAIT_HIGH}                45 seconds

# Browser config
#${BROWSER}        headlesschrome
${BROWSER}         chrome
${URL}             https://www.liverpool.com.mx/tienda/home


*** Keywords ***
Setup_Suite_Config
    Set Selenium Speed                  ${SELENIUM_SPEED}
    Set Selenium Timeout                ${TIMEOUT}
    Launch_Main_Page
    #Get data configuration
    #Additional configuration setup
    #Set cookies
    #Define automation metrics

Tear_Down_Configuration
    [Arguments]  ${close}=True
    Run Keyword If  ${close}  Close All Browsers
    # Write_Log_Footer

Launch_Main_Page
    Open browser  ${URL}  ${BROWSER}
    Maximize browser window

Write_Log_Header


Write_Log_Body
