Feature: Order Cancellation Functionality - Positive Test Cases

  Scenario: Successfully cancel another valid order
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    And User clicks the "Cancel Order" button
    Then The status message should display "Order ORD67890 has been successfully cancelled."
