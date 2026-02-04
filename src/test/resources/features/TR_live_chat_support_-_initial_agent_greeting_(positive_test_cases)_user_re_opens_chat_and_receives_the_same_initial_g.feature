Feature: Live Chat Support - Initial Agent Greeting (Positive Test Cases)

  Scenario: User re-opens chat and receives the same initial greeting
    Given User is on the "Customer Support" page
    And User initiates the live chat
    And User closes the chat window
    When User re-initiates the live chat
    Then The chat window should display the greeting message "Hi My name is Joyce, how may I assist you today?"
