Feature: OrderTracking_NegativeScenarios

  Scenario: Track with a non-existent order number
    Given User is on the Order Tracking page
    When User enters order number "ORD99999"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found."
