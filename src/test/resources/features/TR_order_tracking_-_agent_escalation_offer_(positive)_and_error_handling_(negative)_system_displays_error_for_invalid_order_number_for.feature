Feature: Order Tracking - Agent Escalation Offer (Positive) and Error Handling (Negative)

  Scenario: System displays error for invalid order number format
    Given I am on the order tracking page
    When I enter order number "INV!ALID#"
    And I click the "Track Order" button
    Then the error message should display "Invalid order number format."
