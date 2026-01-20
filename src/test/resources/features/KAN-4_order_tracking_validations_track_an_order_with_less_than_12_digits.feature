Feature: Order Tracking Validations

  Scenario: Track an order with less than 12 digits
    Given User is on the order tracking page
    When User enters order number "12345"
    And User clicks the "Track Order" button
    Then The error message should display "Order number must be 12 digits long."
