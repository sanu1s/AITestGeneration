Feature: Order Tracking System - Negative Scenarios

  Scenario: Display error for an empty order number
    Given User is on the Order Tracking page
    When User enters order number ""
    And User clicks the Track Order button
    Then The error message should display "Order number cannot be empty."
