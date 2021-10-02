*** Variables ***

# Header section
${main_logo}         //div[@class='o-container container p-0']//a/img
${input_search}      //div[@class='input-group']/input
${btn_search}        //div[@class='input-group-append']/button
${mnu_misPedidos}    //a[@class='a-header__topLink'][text()='Mis pedidos']
${mnu_iniSesion}     //span[@class='a-header__topLink'][text()='Iniciar sesión']/..

# Preview results
${cont_previewSearch}   //div[@class='m-typeahead']
${cont_title}           //div[@class='m-typeahead']//p[text()]
${li_articles}          //div[@class='m-typeahead']//ul/li
${link_articles}        /div/a