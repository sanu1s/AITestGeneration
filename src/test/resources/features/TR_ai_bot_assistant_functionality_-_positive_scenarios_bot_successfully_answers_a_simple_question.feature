Feature: AI Bot Assistant Functionality - Positive Scenarios

  Scenario: Bot Successfully Answers a Simple Question
    Given User is on the AI Bot Assistant page
    When User enters question "What is the capital of France?"
    And User clicks the "Ask" button
    Then The bot response should display "Paris is the capital of France."
