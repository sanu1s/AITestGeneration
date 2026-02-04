Feature: Order Tracking - Positive Scenarios - Successful Delivery

  Scenario: Verify successful delivery status for a valid order number
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD12345 has been delivered successfully."
