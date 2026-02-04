Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track another order - Delivered
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD67890 has been Delivered"
