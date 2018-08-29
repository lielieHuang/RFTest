*** Settings ***
Library           Selenium2Library

*** Keywords ***
打开浏览器
    [Arguments]    ${url}
     Open Browser    ${url}    Firefox

输入搜索关键字
    [Arguments]    ${name}
    Input Text    name=wd    ${name}

点击搜索按钮
    Click Button    id=su

验证页面文本
    [Arguments]    ${text}
    Page Should Contain    ${text}

关闭浏览器
    Close Browser
