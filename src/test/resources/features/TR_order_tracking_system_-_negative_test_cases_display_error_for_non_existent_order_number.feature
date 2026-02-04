Feature: Order Tracking System - NEGATIVE TEST CASES

  Scenario: Display error for non-existent order number
    Given User is on the order tracking page
    When User enters order number "NONEXIST"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please verify the order number."
