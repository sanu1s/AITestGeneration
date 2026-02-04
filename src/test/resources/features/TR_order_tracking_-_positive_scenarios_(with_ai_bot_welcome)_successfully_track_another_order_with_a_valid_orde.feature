Feature: Order Tracking - Positive Scenarios (with AI Bot Welcome)

  Scenario: Successfully track another order with a valid order number
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD67890 is Delivered"
