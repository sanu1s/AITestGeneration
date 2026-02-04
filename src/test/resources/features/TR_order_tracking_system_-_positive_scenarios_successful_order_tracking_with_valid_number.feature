Feature: Order Tracking System - Positive Scenarios

  Scenario: Successful Order Tracking with valid number
    Given User is on the order tracking page
    When User enters order number "0063753110"
    And User clicks the "Track Order" button
    Then The status message should display "Order 0063753110 found."
