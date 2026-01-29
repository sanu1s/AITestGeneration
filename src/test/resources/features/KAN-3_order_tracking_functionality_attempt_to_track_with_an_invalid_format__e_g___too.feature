Feature: Order Tracking Functionality

  Scenario: Attempt to track with an invalid format (e.g., too short)
    Given User is on the order tracking page
    When User enters order number "SHORT"
    And User clicks the "Track Order" button
    Then The result message should display "Invalid order number format."
