Feature: User Personalization Display Verification - Positive Test Cases

  Scenario: Verify Personalized Welcome Message for Logged-In User
    Given User navigates to the login page "https://www.example.com/login"
    When User enters username "john.doe" and password "securePass123"
    And User clicks on the login button
    Then User should be redirected to the dashboard page "https://www.example.com/dashboard"
    And The page should display personalized welcome message "Welcome, John Doe!"
