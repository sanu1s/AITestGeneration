Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: Successfully track a valid order number
    Given user is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The tracking status should display "Order ORD12345 is being processed."
