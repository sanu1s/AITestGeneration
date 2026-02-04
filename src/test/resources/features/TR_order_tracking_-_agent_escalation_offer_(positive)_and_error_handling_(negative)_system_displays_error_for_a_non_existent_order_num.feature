Feature: Order Tracking - Agent Escalation Offer (Positive) and Error Handling (Negative)

  Scenario: System displays error for a non-existent order number
    Given I am on the order tracking page
    When I enter order number "NONEXISTENT123"
    And I click the "Track Order" button
    Then the error message should display "Order not found."
