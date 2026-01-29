Feature: Order Tracking - Validation Scenarios

  Scenario: Submit order number with special characters
    Given User is on the order tracking page
    When User enters order number "ORD#123"
    And User clicks the "Track Order" button
    Then The result should display "Invalid order number format"
