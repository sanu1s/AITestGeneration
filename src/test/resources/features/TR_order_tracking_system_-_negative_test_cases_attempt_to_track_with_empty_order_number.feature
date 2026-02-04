Feature: Order Tracking System - Negative Test Cases

  Scenario: Attempt to Track with Empty Order Number
    Given User is on the order tracking page
    When User leaves the order number field empty
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
