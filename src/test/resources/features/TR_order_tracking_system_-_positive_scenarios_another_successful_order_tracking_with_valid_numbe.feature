Feature: Order Tracking System - Positive Scenarios

  Scenario: Another Successful Order Tracking with valid number
    Given User is on the order tracking page
    When User enters order number "ORDER98765"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORDER98765 found."
