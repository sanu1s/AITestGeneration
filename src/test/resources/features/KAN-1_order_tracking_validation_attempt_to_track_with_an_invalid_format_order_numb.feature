Feature: Order Tracking Validation

  Scenario: Attempt to track with an invalid format order number
    Given User is on the order tracking page
    When User enters order number "123"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format."
    And The URL should remain "http://127.0.0.1:8000/order/tracking"
