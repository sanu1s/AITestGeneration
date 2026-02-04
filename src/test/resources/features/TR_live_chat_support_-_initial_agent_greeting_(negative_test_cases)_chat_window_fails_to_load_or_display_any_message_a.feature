Feature: Live Chat Support - Initial Agent Greeting (Negative Test Cases)

  Scenario: Chat window fails to load or display any message after initiation attempt
    Given User is on the "Customer Support" page
    When User attempts to initiate the live chat
    Then The chat window should not be visible after 5 seconds
