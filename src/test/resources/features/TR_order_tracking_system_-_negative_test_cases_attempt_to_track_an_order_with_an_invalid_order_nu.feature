Feature: Order Tracking System - Negative Test Cases

  Scenario: Attempt to track an order with an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID789"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number. Please try again."
