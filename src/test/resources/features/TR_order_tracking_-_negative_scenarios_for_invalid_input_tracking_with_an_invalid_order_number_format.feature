Feature: Order Tracking - Negative Scenarios for Invalid Input

  Scenario: Tracking with an invalid order number format
    Given User is on the order tracking page
    When User enters order number "INVALID_ORD"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number format."
