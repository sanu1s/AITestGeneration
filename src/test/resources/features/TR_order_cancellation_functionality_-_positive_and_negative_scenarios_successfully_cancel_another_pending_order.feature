Feature: Order Cancellation Functionality - Positive and Negative Scenarios

  Scenario: Successfully cancel another pending order
    Given User is on the "Order Tracking" page at "https://example.com/track"
    When User enters order number "ORD23456"
    And User clicks "Track Order" button
    And User clicks "Cancel Order" button
    Then The status message should display "Order ORD23456 has been successfully cancelled."
