Feature: Order Tracking Validation

  Scenario: Attempt to track with an invalid order number format
    Given User is on the order tracking page
    When User enters order number "INV!D0R"
    And User clicks the "Track Order" button
    Then The result message should display "Invalid order number format."
