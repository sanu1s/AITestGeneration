Feature: OrderTrackingDelayedStatus.feature

  Scenario: Verify tracking a valid order displays Delayed status
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status message should display "The order status Delayed"
    And The current URL should be "http://127.0.0.1:8000/order/tracking"
