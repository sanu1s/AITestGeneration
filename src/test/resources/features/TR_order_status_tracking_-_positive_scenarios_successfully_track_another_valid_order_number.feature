Feature: Order Status Tracking - Positive Scenarios

  Scenario: Successfully track another valid order number
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The order status should display "Your order ORD67890 is Delivered."
