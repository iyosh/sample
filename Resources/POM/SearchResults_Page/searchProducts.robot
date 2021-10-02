*** Settings ***
Resource  ../Locators/Loc_SearchResults.robot
Resource  ../Locators/Loc_Main.robot
Library  String
Library  Collections


*** Keywords ***
Search_Product
    [Arguments]  ${search}
    Input text  ${input_search}  ${search}
    Click element  ${btn_search}
    Wait until element is visible  ${h3_filters}
    Wait until element is visible  ${li_products}
    Log to console  Product <${search}> has been searched.
    Wait until element is not visible  ${loader}

Narrow_search
    ${filters} =  create list
    ${webs} =  get webelements  ${h3_filters}
    Log to console  Available filters for current search:
    FOR  ${w}  IN  @{webs}
        ${txt} =  get text  ${w}
        Append to list  ${filters}  ${w}
        Log to console  ${txt}
    END

    # Filtering by brand
    Wait until element is visible  ${c_products}
    ${loc} =  catenate  SEPARATOR=${EMPTY}  ${lb_brands}${inp_options}
    ${count_loc} =  catenate  SEPARATOR=${EMPTY}  ${lb_brands}${inp_op}
    ${ele} =  get webelements  ${count_loc}
    ${len} =  get length  ${ele}
    ${r} =  get_random_num  1  ${len}
    ${r} =  convert to string  ${r}
    ${loc} =  replace string  ${loc}  _INDEX_  ${r}
    click element  ${loc}
    Wait until element is not visible  ${loader}

    #Filtering by prices
    Wait until element is visible  ${c_products}
    ${loc} =  catenate  SEPARATOR=${EMPTY}  ${lb_prices}${inp_options}
    ${count_loc} =  catenate  SEPARATOR=${EMPTY}  ${lb_prices}${inp_op}
    ${ele} =  get webelements  ${count_loc}
    ${len} =  get length  ${ele}
    ${r} =  get_random_num  1  ${len}
    ${r} =  convert to string  ${r}
    ${loc} =  replace string  ${loc}  _INDEX_  ${r}
    Set focus to element  ${loc}
    click element  ${loc}
    Wait until element is not visible  ${loader}

    #${visible} =  run keyword and return status  wait until element is visible  ${btn_buy}
    #Run keyword if  '${visible}' == 'True'  Filter_by_size
    #    ...  ELSE  Filter_by_inches

Filter_by_size
    #Filtering by size
    Wait until element is not visible  ${loader}
    ${loc} =  catenate  SEPARATOR=${EMPTY}  ${lb_size}${inp_button}
    ${count_loc} =  catenate  SEPARATOR=${EMPTY}  ${lb_prices}${inp_op}
    ${ele} =  get webelements  ${count_loc}
    ${len} =  get length  ${ele}
    ${r} =  get_random_num  1  ${len}
    ${r} =  convert to string  ${r}
    ${loc} =  replace string  ${loc}  _INDEX_  ${r}
    Set focus to element  ${loc}
    Wait until element is not visible  ${loader}
    click element  ${loc}
    Wait until element is visible  ${c_products}

Filter_by_inches
    #Filtering by size
    Wait until element is not visible  ${loader}
    ${loc} =  catenate  SEPARATOR=${EMPTY}  ${lb_inches}${inp_options}
    ${count_loc} =  catenate  SEPARATOR=${EMPTY}  ${lb_prices}${inp_op}
    ${ele} =  get webelements  ${count_loc}
    ${len} =  get length  ${ele}
    ${r} =  get_random_num  1  ${len}
    ${r} =  convert to string  ${r}
    ${loc} =  replace string  ${loc}  _INDEX_  ${r}
    Set focus to element  ${loc}
    Wait until element is not visible  ${loader}
    click element  ${loc}
    Wait until element is visible  ${c_products}