Feature: User Login and Welcome Message Display - Positive and Negative Scenarios

  Scenario: Failed login displays error message for invalid credentials
    Given User navigates to the login page
    When User enters username "invaliduser" and password "wrongpass"
    And User clicks the login button
    Then The error message should display "Invalid username or password."
    And The current URL should be "https://example.com/login"
