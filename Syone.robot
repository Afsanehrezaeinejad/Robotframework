*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://www.syone.com/it-management
${Browser}        Chrome

*** Test Cases ***
SubmitFormTest
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Fill Form Inputs
    Select Job Title    Others
    Submit Form
    [Teardown]    Close Browser

*** Keywords ***
Fill Form Inputs
    Input Text    css:input[name=firstname]    First Name
    Input Text    css:input[name=lastname]    Last Name
    Input Text    css:input[name=email]    test@example.com
    Click Job Title Dropdown

Select Job Title
    [Arguments]    ${title}
    Click Job Title Dropdown
    Click Element    css:option[value=${title}]

Submit Form
    Click Button    css:input[value=submit]

Click Job Title Dropdown
    Click Element    css:input[name=jobtitle]
