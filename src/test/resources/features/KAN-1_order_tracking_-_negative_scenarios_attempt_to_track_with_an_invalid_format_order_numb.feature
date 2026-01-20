Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track with an invalid format order number
    Given User is on the order tracking page
    When User enters order number "INV#"
    And User clicks the "Track Order" button
    Then The result should display error message "Invalid order number format"
