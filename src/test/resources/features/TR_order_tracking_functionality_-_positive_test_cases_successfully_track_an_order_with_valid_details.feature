Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully track an order with valid details
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User enters billing zip code "90210"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORD12345 is being processed. Expected delivery: 2024-07-30"
