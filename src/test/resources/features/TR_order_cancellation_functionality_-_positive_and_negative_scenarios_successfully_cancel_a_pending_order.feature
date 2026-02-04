Feature: Order Cancellation Functionality - Positive and Negative Scenarios

  Scenario: Successfully cancel a pending order
    Given User is on the "Order Tracking" page at "https://example.com/track"
    When User enters order number "ORD78901"
    And User clicks "Track Order" button
    And User clicks "Cancel Order" button
    Then The status message should display "Order ORD78901 has been successfully cancelled."
