Feature: Order Tracking Functionality

  Scenario: Display error for non-existent order number
    Given User is on the order tracking page
    When User enters order number "ORD99999" and clicks track
    Then The error message should display "Order not found."
