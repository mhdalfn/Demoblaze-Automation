***Settings***
Library           SeleniumLibrary
Suite Setup       Open Browser       ${URL}    ${BROWSER}
Suite Teardown    Close Browser

***Variables***
${URL}        https://www.demoblaze.com
${BROWSER}    Chrome


#Locator
#Login
${LoginBar}            //*[@id="login2"]
${Usernamefield}       //input[@id='loginusername']
${Passwordfield}       //input[@id='loginpassword']
${LoginButton}         //*[@id="logInModal"]/div/div/div[3]/button[2]

*** Keywords ***
#Login
Click Login Menu Bar
    Click Element    ${LoginBar}

Input Username
    Sleep         2s
    Input Text    ${Usernamefield}    test_alfi

Input Password
    Input Text    ${Passwordfield}    123

Click button login
    Click Element    ${LoginButton}
    Sleep            2s

Verify on Login Page
    Sleep                  2s
    Page Should Contain    Welcome test_alfi
    Sleep                  2s

***Test Cases***
Login with Valid Credentials
    Click Login Menu Bar
    Input Username
    Input Password
    Click button login
    Verify on Login Page