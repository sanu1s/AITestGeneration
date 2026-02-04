Feature: Order Tracking - Related Item Cancellation Status: Positive Test Cases

  Scenario: Positive - Verify successful cancellation status for another related item order
    Given User is on the order tracking page "https://example.com/order-tracking"
    When User enters order number "ORDER_FURNITURE_CANCEL_2"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORDER_FURNITURE_CANCEL_2: Main item and related accessories have been cancelled."
