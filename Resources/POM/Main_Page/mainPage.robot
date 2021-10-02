*** Settings ***
Resource  ../Locators/Loc_Main.robot

*** Keywords ***
Load_Main_Page
    Wait until element is visible  ${main_logo}
    Wait until element is visible  ${input_search}
    Wait until element is visible  ${btn_search}
    Wait until element is visible  ${mnu_misPedidos}
    Wait until element is visible  ${mnu_iniSesion}