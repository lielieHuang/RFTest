*** Settings ***
Library           Selenium2Library
Library           DatabaseLibrary

*** Test Cases ***
test_connectDatabase
    [Tags]    database_test
    Connect To Database Using Custom Params    pymysql    database='fdp_rules_engine',host='staging.fdp.g7pay.net',port=33306,user='root',password='root',
    @{table}    Query    select * from risk_base_data.t_loan_quota WHERE F_orgcode="200K1Q";
    Log    @{table}[1]
    ${value1}    Set Variable    @{table}[1]
    Log    ${value1[0]}
    Disconnect From Database
