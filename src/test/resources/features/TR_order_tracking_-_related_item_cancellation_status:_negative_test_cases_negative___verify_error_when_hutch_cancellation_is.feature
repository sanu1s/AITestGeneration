Feature: Order Tracking - Related Item Cancellation Status: Negative Test Cases

  Scenario: Negative - Verify error when hutch cancellation is not possible through tracking
    Given User is on the order tracking page "https://example.com/order-tracking"
    When User enters order number "ORDER_HUTCH_NO_CANCEL_3"
    And User clicks the "Track Order" button
    Then The error message should display "Order ORDER_HUTCH_NO_CANCEL_3: Desk is cancelled, but hutch cancellation requires separate action. Please contact support."
