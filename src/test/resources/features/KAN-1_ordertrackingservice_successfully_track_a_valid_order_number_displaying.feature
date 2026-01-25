Feature: OrderTrackingService

  Scenario: Successfully track a valid order number displaying 'Delayed' status
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should display "The order status Delayed"
    And The current URL should be "http://127.0.0.1:8000/order/tracking"
