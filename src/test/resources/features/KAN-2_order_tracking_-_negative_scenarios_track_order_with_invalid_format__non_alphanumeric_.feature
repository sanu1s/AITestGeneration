Feature: Order Tracking - Negative Scenarios

  Scenario: Track order with invalid format (non-alphanumeric)
    Given User is on the order tracking page
    When User enters order number "INVALID!@#"
    And User clicks the "Track Order" button
    Then The result should display "Invalid order number format. Please use alphanumeric characters only."
