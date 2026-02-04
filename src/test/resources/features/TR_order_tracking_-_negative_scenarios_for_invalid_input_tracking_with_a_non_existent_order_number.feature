Feature: Order Tracking - Negative Scenarios for Invalid Input

  Scenario: Tracking with a non-existent order number
    Given User is on the order tracking page
    When User enters order number "NON_EXIST_999"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check your order number."
