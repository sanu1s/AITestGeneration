Feature: AI Bot Assistant Welcome Message - Negative Test Cases

  Scenario: User does not see a missing or altered agent connection capability message
    Given User is on the AI Bot chat interface
    Then The agent connection capability message should not display "I'll connect you to an agent."
    And The agent connection capability message should not contain "I will not connect you to an agent."
