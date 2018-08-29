*** Settings ***
Library           Selenium2Library
Resource          testflow.robot

*** Test Cases ***
test_case1
    :FOR    ${i}    IN    A    B    C
    \    LOG    i=${i}
    @{listVal}    Create List    1    2    3    F
    :FOR    ${n}    IN    @{listVal}
    \    LOG    n=${n}

test_case2_if
    ${a}    Set Variable    0
    ${b}    Set Variable    5
    Run Keyword If    ${a}>=1    log    1
    ...    ELSE IF    ${b}<=4    log    2
    ...    ELSE    log    3

test_case3
    :FOR    ${i}    IN RANGE    10
    \    log    i=${i}
    \    Exit For Loop If    ${i}>=6

test_case4_seleniumtest
    打开浏览器    http://www.baidu.com
    输入搜索关键字    hello
    点击搜索按钮
    验证页面文本    hello
    关闭浏览器

test_case5_testflow
    关键字搜索流程    http://www.baidu.com    黄莉    黄莉
