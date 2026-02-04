Feature: Order Tracking System - Negative Scenarios

  Scenario: Attempt to track with an invalid order number format
    Given User is on the order tracking page
    When User enters order number "INVALIDORDER"
    And User clicks the Track Order button
    Then The error message should display "Error: Invalid Order Number Format"
