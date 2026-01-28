Feature: Order Tracking - Negative Scenarios

  Scenario: Tracking with an invalid format order number (e.g., too short or non-numeric)
    Given User is on the order tracking page
    When User enters order number "INVLD"
    And User clicks the "Track Order" button
    Then The result should display error message "Invalid order number format."
