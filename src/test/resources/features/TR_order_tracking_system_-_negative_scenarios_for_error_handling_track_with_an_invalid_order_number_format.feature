Feature: Order Tracking System - Negative Scenarios for Error Handling

  Scenario: Track with an invalid order number format
    Given User is on the order tracking page
    When User enters order number "INVALID"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number Format"
