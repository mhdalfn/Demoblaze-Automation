***Settings***
Library           SeleniumLibrary
Suite Setup       Open Browser       ${URL}    ${BROWSER}
Suite Teardown    Close Browser

***Variables***
${URL}        https://www.demoblaze.com
${BROWSER}    Chrome


#Locator
#Login
${LoginBar}         //*[@id="login2"]
${Usernamefield}    //input[@id='loginusername']
${Passwordfield}    //input[@id='loginpassword']
${LoginButton}      //*[@id="logInModal"]/div/div/div[3]/button[2]
#Message
${ContactBar}      //*[@id="navbarExample"]/ul/li[2]/a
${Emailfield}      //*[@id="recipient-email"]
${Namefield}       //*[@id="recipient-name"]
${Messagefield}    //*[@id="message-text"]
${SendButton}      //*[@id="exampleModal"]/div/div/div[3]/button[2]



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

Verify on Login Page
    Sleep                  5s
    Page Should Contain    Welcome test_alfi
    Sleep                  2s

#Message
Click Contact Bar 
    Click Element       ${ContactBar}
    Sleep       2s

Input Email
    Input Text      ${Emailfield}       alfi@test.com

Input Name
    Input Text      ${Namefield}        Alfian

Input Message
    Input Text      ${Messagefield}     Halo

Click Button Send Message
    Click Element       ${SendButton}


***Test Cases***
Login with Valid Credentials
    Click Login Menu Bar
    Input Username
    Input Password
    Click button login
    Verify on Login Page

Send Message
    Click Contact Bar 
    Input Email
    Input Name
    Input Message
    Click Button Send Message