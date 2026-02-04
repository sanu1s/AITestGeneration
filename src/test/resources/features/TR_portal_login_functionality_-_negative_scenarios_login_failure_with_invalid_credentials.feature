Feature: Portal Login Functionality - Negative Scenarios

  Scenario: Login failure with invalid credentials
    Given User navigates to the portal login page
    When User enters username "invaliduser" and password "wrongpass"
    And User clicks the "Login" button
    Then An error message "Invalid username or password." should be displayed
    And User should remain on the login page
