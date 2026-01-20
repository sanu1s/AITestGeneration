Feature: Order Tracking - Valid Input

  Scenario: Successfully track a valid 12-digit numeric order
    Given User is on the order tracking page
    When User enters order number "123456789012"
    And User clicks the "Track Order" button
    Then The order status should display "The order status Delayed"
    And The current URL should be "http://127.0.0.1:8000/order/tracking"
