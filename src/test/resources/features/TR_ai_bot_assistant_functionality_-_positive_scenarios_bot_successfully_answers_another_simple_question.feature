Feature: AI Bot Assistant Functionality - Positive Scenarios

  Scenario: Bot Successfully Answers Another Simple Question
    Given User is on the AI Bot Assistant page
    When User enters question "What is the largest ocean on Earth?"
    And User clicks the "Ask" button
    Then The bot response should display "The Pacific Ocean is the largest ocean on Earth."
