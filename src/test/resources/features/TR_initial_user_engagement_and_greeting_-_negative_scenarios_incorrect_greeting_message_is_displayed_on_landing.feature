Feature: Initial User Engagement and Greeting - Negative Scenarios

  Scenario: Incorrect greeting message is displayed on landing page
    Given User navigates to the "https://www.example.com/greeting" page
    Then The greeting message should not display "Welcome, how can I help you?"
