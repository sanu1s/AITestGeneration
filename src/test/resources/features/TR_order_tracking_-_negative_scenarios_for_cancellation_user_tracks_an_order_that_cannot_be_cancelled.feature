Feature: Order Tracking - Negative Scenarios for Cancellation

  Scenario: User tracks an order that cannot be cancelled
    Given User is on the order tracking page
    When User enters order number "1122334455"
    And User clicks the "Track Order" button
    Then The error message should display "Order 1122334455 cannot be cancelled as it has already been shipped."
