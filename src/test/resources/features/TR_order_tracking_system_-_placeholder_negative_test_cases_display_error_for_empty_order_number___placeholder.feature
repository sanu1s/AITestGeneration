Feature: Order Tracking System - Placeholder Negative Test Cases

  Scenario: Display error for empty order number - Placeholder
    Given User is on the order tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Please enter an order number - Placeholder"
