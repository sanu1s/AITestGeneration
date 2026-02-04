Feature: Order Tracking System - Negative Test Cases

  Scenario: Attempt to Track an Invalid Order Number
    Given User is on the order tracking page
    When User enters order number "INVALIDORDER"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number. Please try again."
