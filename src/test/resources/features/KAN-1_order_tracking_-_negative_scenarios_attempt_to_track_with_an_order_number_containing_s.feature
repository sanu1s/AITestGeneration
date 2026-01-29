Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track with an order number containing special characters
    Given User is on the Order Tracking page
    When User enters order number "ORD!@#$"
    And User clicks the "Track Order" button
    Then The result should display "Invalid Order Number format."
