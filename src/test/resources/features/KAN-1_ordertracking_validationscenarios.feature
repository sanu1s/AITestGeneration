Feature: OrderTracking_ValidationScenarios

  Scenario: Track with an order number that is too long
    Given User is on the Order Tracking page
    When User enters order number "ORD1234567890"
    And User clicks the "Track Order" button
    Then The error message should display "Order number must not exceed 10 characters."
