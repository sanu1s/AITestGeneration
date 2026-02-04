Feature: Customer Service Chat Handoff Functionality - Positive Cases

  Scenario: Display of Care Representative Joining Message
    Given User is on the customer service portal at "https://example.com/support"
    When User initiates a request for human assistance
    And a care representative becomes available
    Then the conversation area should display "A care representative is joining now to continue the conversation."
