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
#Product
${Product}             //*[@id="tbodyid"]/div[1]/div/a/img
${AddCartButton}       //*[@id="tbodyid"]/div[2]/div/a
#Payment
${CartBar}             //*[@id="navbarExample"]/ul/li[4]/a
${PlaceOrderButton}    //*[@id="page-wrapper"]/div/div[2]/button
${NameCardfield}       //*[@id="name"]
${CreditCardfield}     //*[@id="card"]
${PurchaseButton}      //*[@id="orderModal"]/div/div/div[3]/button[2]


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

#Product
Click Product
    Click Element    ${Product}
    Sleep            2s

Click button Add to Cart
    Click Element    ${AddCartButton}

#Payment
Click Cart Menu Bar
    Click Element    ${CartBar}
    Sleep            2s

Click button Place Order
    Click Element    ${PlaceOrderButton}

Input Name Card
    Sleep         2s
    Input Text    ${NameCardfield}    Alfian

Input Credit Card
    Input Text    ${CreditCardfield}    12345678

Click button Purchase
    Click Element    ${PurchaseButton}

Verify on Purchase Page
    Sleep                  2s
    Page Should Contain    Thank you for your purchase!
    Sleep                  2s


***Test Cases***
Login with Valid Credentials
    Click Login Menu Bar
    Input Username
    Input Password
    Click button login
    Verify on Login Page

Add Product to Cart
    Click Product
    Click button Add to Cart

Payment Cart
    Click Cart Menu Bar
    Click button Place Order
    Input Name Card
    Input Credit Card
    Click button Purchase
    Verify on Purchase Page