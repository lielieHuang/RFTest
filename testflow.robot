*** Settings ***
Resource          elements.robot

*** Keywords ***
关键字搜索流程
    [Arguments]    ${url}    ${name}    ${text}
    打开浏览器    ${url}
    输入搜索关键字    ${name}
    点击搜索按钮
    验证页面文本    ${text}
    关闭浏览器
