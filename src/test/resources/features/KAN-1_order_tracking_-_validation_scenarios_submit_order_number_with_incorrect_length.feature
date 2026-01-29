Feature: Order Tracking - Validation Scenarios

  Scenario: Submit order number with incorrect length
    Given User is on the order tracking page
    When User enters order number "ORD123"
    And User clicks the "Track Order" button
    Then The result should display "Order number must be 8 characters long"
