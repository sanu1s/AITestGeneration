Feature: Live Chat Support - Initial Agent Greeting (Positive Test Cases)

  Scenario: User receives standard initial greeting from support agent upon chat initiation
    Given User is on the "Customer Support" page
    When User initiates the live chat
    Then The chat window should display the greeting message "Hi My name is Joyce, how may I assist you today?"
