Feature: Customer Service Chat Handoff Functionality - Negative Cases

  Scenario: No Care Representative Available for Handoff
    Given User is on the customer service portal at "https://example.com/support"
    When User initiates a request for human assistance
    And no care representative is available
    Then an error message should display "No care representative is currently available. Please try again later."
