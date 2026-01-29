Feature: Order Tracking - Negative Scenarios

  Scenario: Display error for invalid order number format
    Given User is on the order tracking page
    When User enters order number "INV-ABC"
    And User clicks the "Track Order" button
    Then An error message "Invalid order number format." should be displayed
