Feature: User Login and Welcome Message Display - Positive and Negative Scenarios

  Scenario: Successful login displays personalized welcome message for Mara
    Given User navigates to the login page
    When User enters username "Mara" and password "password123"
    And User clicks the login button
    Then The welcome message should display "Hello Mara, how can I help you today?"
    And The current URL should be "https://example.com/dashboard"
