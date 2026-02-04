Feature: Order Cancellation - Positive Scenarios

  Scenario: Successfully cancel an eligible order
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks "Track Order" button
    And User clicks "Cancel Order" button
    Then The status message should display "Order ORD12345 has been successfully cancelled."
