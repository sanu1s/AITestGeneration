Feature: Customer Service Chat Handoff Functionality - Positive Cases

  Scenario: Display of Digital Assistant Stepping Away Message
    Given User is on the customer service portal at "https://example.com/support"
    When a care representative takes over the conversation
    Then the conversation area should display "The digital assistant is stepping away to allow them to take over."
