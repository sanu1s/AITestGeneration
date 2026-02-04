Feature: Portal Login Functionality - Positive Scenarios

  Scenario: Successful login with valid credentials
    Given User navigates to the portal login page
    When User enters username "validuser" and password "validpass"
    And User clicks the "Login" button
    Then User should be redirected to the portal dashboard
    And The welcome message "Welcome, validuser!" should be displayed
