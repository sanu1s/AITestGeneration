Feature: Order Cancellation - Agent Escalation (Positive Scenarios)

  Scenario: System identifies valid order and escalates to agent
    Given User is on the order processing page
    When User enters order number "0061845946"
    And User clicks the "Track Order" button
    Then The status message should display "This looks something a care representative is better suited to handle."
    And The status message should also display "May I check if an agent is available to help you?"
