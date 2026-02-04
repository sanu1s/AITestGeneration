Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Tracking with an Invalid Order Number
    Given User is on the order tracking page
    When User enters order number "INVALID123"
    And User clicks on "Track Order" button
    Then The error message should display "Order not found. Please check your order number."
