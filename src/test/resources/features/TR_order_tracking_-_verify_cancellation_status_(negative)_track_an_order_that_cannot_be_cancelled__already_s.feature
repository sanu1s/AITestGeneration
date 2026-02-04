Feature: Order Tracking - Verify Cancellation Status (Negative)

  Scenario: Track an order that cannot be cancelled (already shipped)
    Given user is on the order tracking page
    When user enters order number "ORD_SHIPPED_222"
    And user clicks on "Track Order" button
    Then the status message should display "Order ORD_SHIPPED_222 has already shipped and cannot be cancelled."
