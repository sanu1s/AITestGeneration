Feature: Live Chat Support - Initial Agent Greeting (Negative Test Cases)

  Scenario: Chat message element displays an incorrect greeting
    Given User is on the "Customer Support" page
    When User initiates the live chat
    Then The chat window should not contain the text "Welcome to our service!"
