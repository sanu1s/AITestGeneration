Feature: Order Tracking - Negative Scenarios

  Scenario: User tracks an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALIDORDER"
    And User clicks the Track Order button
    Then The error message should display "Order INVALIDORDER not found. Please check your order number."
