Feature: User Personalization Display Verification - Positive Test Cases

  Scenario: Verify Personalized Profile Information for Logged-In User
    Given User navigates to the login page "https://www.example.com/login"
    When User enters username "jane.smith" and password "pass4jane"
    And User clicks on the login button
    Then User should be redirected to the dashboard page "https://www.example.com/dashboard"
    And The page should display user email "jane.smith@example.com"
