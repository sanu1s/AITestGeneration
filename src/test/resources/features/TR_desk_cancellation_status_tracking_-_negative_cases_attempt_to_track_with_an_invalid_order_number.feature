Feature: Desk Cancellation Status Tracking - Negative Cases

  Scenario: Attempt to track with an invalid order number
    Given User navigates to the "order tracking" page
    When User enters order number "INVALID_ORDER_XYZ"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found or invalid."
