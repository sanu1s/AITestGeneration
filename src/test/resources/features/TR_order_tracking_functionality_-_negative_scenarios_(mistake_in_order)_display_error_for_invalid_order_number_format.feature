Feature: Order Tracking Functionality - Negative Scenarios (Mistake in Order)

  Scenario: Display error for invalid order number format
    Given User is on the order tracking page
    When User enters order number "INVALID#"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format."
