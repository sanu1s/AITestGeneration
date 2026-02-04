Feature: Order Tracking - Agent Escalation Offer (Positive) and Error Handling (Negative)

  Scenario: System successfully offers agent support for another unresolvable order
    Given I am on the order tracking page
    When I enter order number "ESCALATE_ORD_2"
    And I click the "Track Order" button
    Then the status message should display "I understand how this situation may be frustrating. This looks something a care representative is better suited to handle. May I check if an agent is available to help you?"
