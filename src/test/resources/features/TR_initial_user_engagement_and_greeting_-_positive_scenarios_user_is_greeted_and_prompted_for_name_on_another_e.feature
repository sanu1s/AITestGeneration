Feature: Initial User Engagement and Greeting - Positive Scenarios

  Scenario: User is greeted and prompted for name on another entry point
    Given User navigates to the "https://www.example.com/home" page
    Then The greeting message should display "I'll be happy to assist you with that! May I have your name please?"
