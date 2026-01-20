Feature: Order Tracking - Negative Scenarios

  Scenario: Display error for invalid order number format
    Given User is on the order tracking page
    When User enters order number "INV!@#"
    And User clicks the "Track Order" button
    Then The result message should display "Invalid order number format."
