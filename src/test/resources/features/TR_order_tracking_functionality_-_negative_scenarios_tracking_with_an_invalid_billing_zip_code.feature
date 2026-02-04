Feature: Order Tracking Functionality - Negative Scenarios

  Scenario: Tracking with an invalid billing zip code
    Given User is on the order tracking page
    When User enters order number "ORD12345" and billing zip code "00000"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid billing zip code for ORD12345"
