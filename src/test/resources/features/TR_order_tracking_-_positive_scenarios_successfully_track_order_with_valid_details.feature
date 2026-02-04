Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track order with valid details
    Given User navigates to the order tracking page
    When User enters order number "ORD12345"
    And User enters billing zip code "90210"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORD12345 found. Status: Shipped."
