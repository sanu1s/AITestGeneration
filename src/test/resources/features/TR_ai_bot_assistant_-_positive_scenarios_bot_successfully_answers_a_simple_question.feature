Feature: AI Bot Assistant - Positive Scenarios

  Scenario: Bot successfully answers a simple question
    Given User navigates to the AI Bot Assistant page
    When User enters question "What is your purpose?"
    And User clicks the "Send" button
    Then The bot response should display "I am an AI Bot Assistant, here to help you."
