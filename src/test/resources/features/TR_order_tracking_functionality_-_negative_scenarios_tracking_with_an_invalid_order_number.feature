Feature: Order Tracking Functionality - Negative Scenarios

  Scenario: Tracking with an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID123" and billing zip code "90210"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found for INVALID123"
