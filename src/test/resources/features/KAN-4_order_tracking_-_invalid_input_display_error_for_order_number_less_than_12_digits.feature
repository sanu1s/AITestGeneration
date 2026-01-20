Feature: Order Tracking - Invalid Input

  Scenario: Display error for order number less than 12 digits
    Given User is on the order tracking page
    When User enters order number "12345"
    And User clicks the "Track Order" button
    Then The error message should display "Order number must be numeric and 12 digits long."
    And The current URL should be "http://127.0.0.1:8000/order/tracking"
