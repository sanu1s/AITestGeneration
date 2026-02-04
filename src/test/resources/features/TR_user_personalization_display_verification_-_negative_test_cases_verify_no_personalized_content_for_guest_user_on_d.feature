Feature: User Personalization Display Verification - Negative Test Cases

  Scenario: Verify No Personalized Content for Guest User on Dashboard
    Given User navigates to the dashboard page "https://www.example.com/dashboard"
    Then The page should not display personalized welcome message "Welcome,"
    And The page should display a login prompt or generic content "Please log in to view personalized content."
