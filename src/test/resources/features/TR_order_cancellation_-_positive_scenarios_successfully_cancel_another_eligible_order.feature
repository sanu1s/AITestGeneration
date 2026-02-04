Feature: Order Cancellation - Positive Scenarios

  Scenario: Successfully cancel another eligible order
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks "Track Order" button
    And User clicks "Cancel Order" button
    Then The status message should display "Order ORD67890 has been successfully cancelled."
