Feature: OrderTracking_InvalidInputs.feature

  Scenario: Attempt to track with an order number that is too short
    Given User is on the order tracking page
    When User enters order number "ORD12"
    And User clicks the "Track Order" button
    Then The error message should display "Order number must be 7 characters long."
