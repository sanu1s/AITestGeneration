Feature: Customer Service Chat Handoff Functionality - Negative Cases

  Scenario: Digital Assistant Fails to Step Away After Handoff
    Given User is on the customer service portal at "https://example.com/support"
    When a care representative takes over the conversation
    And the digital assistant fails to step away
    Then the conversation area should not contain "The digital assistant is stepping away to allow them to take over."
