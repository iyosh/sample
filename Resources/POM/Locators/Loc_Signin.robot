*** Variables ***
${title_account}    //h1[text()='Crear cuenta']
${in_username}      //input[@id='username']
${in_email}         //input[@id='email']
${in_pass}          //input[@id='password']
${btn_signin}       //button[@type='submit'][text()='Iniciar sesión']
${btn_createAccount}    //button[@type='submit'][text()='Crear cuenta']
${link_create}      //a[text()='Crear cuenta']
${loader}           //div[@class='m-button__goTop'][contains(@style, 'display: none;')]

# Complete data section
${inp_name}         //input[@name='user_firstName']
${inp_lastName}     //input[@name='user_lastName']
${inp_motherName}     //input[@name='user_MotherName']

${option_date}      //div[contains(@class, 'select-datePicker-space')][_OPTION_]
${option_value}     //div[@class='mdc-ripple-upgraded']//select/option[@id='_VALUE_']
${op_gender}        //input[@name='gender'][@value='_GENDER_']
${btn_newAccount}   //button[@class='a-btn a-btn--primary']

${title_celphone}   //h1[text()='Verificación de celular']
${in_phone}         //input[@id='phone']
${btn_continue}     //div[2]/button[@type='submit']
#${frame}            //iframe[@id='wS2YtneaHhMvpKte']