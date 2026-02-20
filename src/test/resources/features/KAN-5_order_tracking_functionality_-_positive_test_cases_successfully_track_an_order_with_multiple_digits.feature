Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully track an order with multiple digits
    Given User is on the order tracking page
    When User enters order number "98765"
    And User clicks the "Track Order" button
    Then The status message should display "The order status Delayed"
