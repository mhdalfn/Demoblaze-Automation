# DemoBlaze Automation with RobotFramework

## Overview

This repository contains automated test scripts using Robot Framework for testing the login, product purchase, and message sending features on the website [DemoBlaze](https://www.demoblaze.com/).

## Prerequisites

Before running the automation tests, ensure you have the following prerequisites installed:

- [Robot Framework](https://robotframework.org/)
- [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/)
- [WebDriver](https://robotframework.org/SeleniumLibrary/#drivers)

## Test Scenarios

The automation tests cover the following scenarios:
1. Login
   - Verify successful login with valid credentials.
2. Product Purchase
   - Log in (precondition for purchase product)
   - Select a product and add it to the cart.
   - Navigate to the cart and complete the purchase process.
   - Verify the order confirmation.
   - Payment
3. Message Sending
   - Log in (precondition for sending a message).
   - Navigate to the message page.
   - Send a message and verify its successful submission.
