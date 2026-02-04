Feature: Order Tracking - Positive Scenarios for Item Delivery Status

  Scenario: Successfully track another order with one item not delivered
    Given User is on the order tracking page "http://localhost:8080/track-order"
    When User enters order number "ORD78902"
    And User clicks the "Track Order" button
    Then The status message should display "There is still one item not delivered"
