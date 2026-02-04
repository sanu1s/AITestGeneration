Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track an invalid order number format
    Given User is on the order tracking page
    When User enters order number "INVALIDORDER"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number format. Please use ORDXXXXX"
