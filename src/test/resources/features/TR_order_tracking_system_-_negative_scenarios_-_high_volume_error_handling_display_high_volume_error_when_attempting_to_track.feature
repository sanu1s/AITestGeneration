Feature: Order Tracking System - Negative Scenarios - High Volume Error Handling

  Scenario: Display High Volume Error when attempting to track an order
    Given User is on the order tracking page
    When User enters order number "VOL12345"
    And User clicks the "Track Order" button
    Then The error message should display "We are currently experiencing higher than normal volumes. Please try again later."
