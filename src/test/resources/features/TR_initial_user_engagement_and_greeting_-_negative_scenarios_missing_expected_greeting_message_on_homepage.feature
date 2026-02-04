Feature: Initial User Engagement and Greeting - Negative Scenarios

  Scenario: Missing expected greeting message on homepage
    Given User navigates to the "https://www.example.com/home" page
    Then The greeting message should not display "I'll be happy to assist you with that! May I have your name please?"
