Feature: Order Tracking System - Negative Scenarios

  Scenario: Tracking with Invalid Order Number Format
    Given User is on the order tracking page
    When User enters order number "INVALID#ORDER"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number Format. Please check and try again."
