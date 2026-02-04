Feature: Order Cancellation - Agent Handoff (Positive Test Cases)

  Scenario: System offers agent for another valid order cancellation request
    Given User is on the order tracking page
    When User enters order number "CANCEL12345"
    And User clicks the "Track Order" button
    Then The status message should display "I understand that you want to cancel your order. This looks something a care representative is better suited to handle. May I check if an agent is available to help you?"
