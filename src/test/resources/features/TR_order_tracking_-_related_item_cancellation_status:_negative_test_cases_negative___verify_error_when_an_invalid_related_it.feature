Feature: Order Tracking - Related Item Cancellation Status: Negative Test Cases

  Scenario: Negative - Verify error when an invalid related item order is tracked
    Given User is on the order tracking page "https://example.com/order-tracking"
    When User enters order number "INVALID_RELATED_ITEM_4"
    And User clicks the "Track Order" button
    Then The error message should display "Order INVALID_RELATED_ITEM_4: No such order found or invalid status for related items."
