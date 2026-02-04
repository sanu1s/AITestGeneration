Feature: Order Cancellation - Negative Test Cases

  Scenario: Attempt to cancel an already shipped order
    Given User is on the order tracking page
    When User enters order number "SHIPPEDORDER789"
    And User clicks the "Track Order" button
    And User clicks the "Cancel Order" button
    Then The error message should display "Order SHIPPEDORDER789 cannot be cancelled as it has already been shipped."
