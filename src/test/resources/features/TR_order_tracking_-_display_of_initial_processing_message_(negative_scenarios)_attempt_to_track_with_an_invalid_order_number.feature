Feature: Order Tracking - Display of Initial Processing Message (Negative Scenarios)

  Scenario: Attempt to track with an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format."
    And The status message should not be displayed
