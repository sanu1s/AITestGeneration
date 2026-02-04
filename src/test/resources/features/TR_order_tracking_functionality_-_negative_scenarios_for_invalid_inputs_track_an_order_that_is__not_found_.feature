Feature: Order Tracking Functionality - Negative Scenarios for Invalid Inputs

  Scenario: Track an order that is 'Not Found'
    Given User is on the order tracking page
    When User enters order number "NONEXIST789"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check the number and try again."
