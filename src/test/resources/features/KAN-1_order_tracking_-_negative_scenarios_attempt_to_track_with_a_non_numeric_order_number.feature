Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track with a non-numeric order number
    Given User is on the order tracking page
    When User enters order number "ORDABC"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format."
