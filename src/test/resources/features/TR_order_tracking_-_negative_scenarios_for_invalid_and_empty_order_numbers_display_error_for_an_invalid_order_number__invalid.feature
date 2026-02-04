Feature: Order Tracking - Negative Scenarios for Invalid and Empty Order Numbers

  Scenario: Display error for an invalid order number "INVALIDORDER123"
    Given User is on the order tracking page
    When User enters order number "INVALIDORDER123"
    And User clicks on "Track Order" button
    Then The error message should display "Order not found. Please check your order number and try again."
