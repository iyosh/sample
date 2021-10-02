*** Settings ***
Resource  ../Locators/Loc_Signin.robot
Resource  ../Locators/Loc_Main.robot
Library  String

*** Keywords ***
Load_Initiate_Session_window
    [Arguments]  ${newAccount}=1

    Click element  ${mnu_iniSesion}
    Log  Click menu <Iniciar sesion>
    Wait until element is visible  ${in_username}
    Wait until element is visible  ${in_pass}
    Wait until element is visible  ${btn_signin}
    Wait until element is visible  ${link_create}
    Log to console  Window <Iniciar Sesion> has been loaded successfully.
    Run keyword if  ${newAccount} == 1  click element  ${link_create}
        ...  ELSE  Log to console  <Uncontrolled flow>

Create_new_account
    [Arguments]  ${email}  ${pass}

    Wait until element is visible  ${title_account}
    Wait until element is visible  ${in_email}
    Wait until element is visible  ${in_pass}
    Wait until element is visible  ${btn_createAccount}
    Input text  ${in_email}  ${email}
    Input text  ${in_pass}   ${pass}
    Click element  ${btn_createAccount}

Complete_new_user_information
    [Arguments]  ${name}  ${lastName}  ${motherName}  ${gender}  ${birthday}

    Wait until element is visible  ${inp_name}
    Wait until element is visible  ${inp_lastName}
    Wait until element is visible  ${inp_motherName}
    Input text  ${inp_name}  ${name}
    Input text  ${inp_lastName}  ${lastName}
    Input text  ${inp_motherName}  ${motherName}
    ${str} =  split string  ${birthday}  /
    ${i} =  set variable  1

    FOR  ${s}  IN  @{str}
        ${op} =  convert to string  ${s}
        ${in} =  convert to string  ${i}
        ${op_date} =  replace string  ${option_date}  _OPTION_  ${in}
        ${op_value} =  run keyword if  ${i} == 3  replace string  ${option_value}  [@id='_VALUE_']  [@value='${s}']
                        ...  ELSE  replace string  ${option_value}  _VALUE_  ${op}
        ${option} =  catenate  SEPARATOR=${EMPTY}  ${op_date}${op_value}
        click element  ${option}
        ${i} =  convert to integer  ${in}
        ${i} =  evaluate  ${i} + 1
    END

    ${op_gender} =  replace string  ${op_gender}  _GENDER_  ${gender}
    click element  ${op_gender}
    Wait until element is not visible  ${loader}
    Wait until element is enabled  ${btn_newAccount}
    Click element  ${btn_newAccount}
    Log to console  New account has been created for ${name} ${lastName} ${motherName}