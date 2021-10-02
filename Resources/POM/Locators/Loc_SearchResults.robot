*** Variables ***

${h3_filters}       //div[contains(@class, 'm-plp__filterSection')]//h3//label[text()]
${lb_brands}        //div[contains(@class, 'filter-brands')]//label[text()]
${lb_inches}        //div[@class='a-plp__btnFilter']//h3//label[text()='Pulgadas']
${lb_size}          //div[@class='a-plp__btnFilter']//h3//label[text()='Tamaño']
${inp_button}       /ancestor::div[@class='m-plp__filterSection ']/div[@class='plp-filter-options active']//li[_INDEX_]//button
${inp_op}           /ancestor::div[@class='m-checkbox__button mdc-form-field']//input
${inp_options}      /ancestor::div[@class='m-plp__filterSection ']//div[@class='m-checkbox__button mdc-form-field'][_INDEX_]//input
#${inp_options_inc}  /ancestor::div[@class='m-plp__filterSection ']//div[@class='m-checkbox__button mdc-form-field'][_INDEX_]//input
${lb_prices}        //div[contains(@class, 'fiterl-prices')]//label[text()]
${c_products}       //div[@class = 'o-listing__products']
${li_products}      //div[@class = 'o-listing__products']/ul/li
${lb_articleName}   //div[@class = 'o-listing__products']/ul/li[_INDEX_]//figcaption//h5[text()]
${loader}           //div[@class='m-button__goTop'][contains(@style, 'display: none;')]

${btn_buy}          //aside[contains(@class, 'o-product__productInfo')]//button[text()='Comprar ahora']
