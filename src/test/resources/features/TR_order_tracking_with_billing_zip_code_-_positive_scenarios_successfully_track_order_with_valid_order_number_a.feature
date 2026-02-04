Feature: Order Tracking with Billing Zip Code - Positive Scenarios

  Scenario: Successfully track order with valid order number and billing zip code
    Given User is on the order tracking page
    When User enters order number "ORD12345" and billing zip code "90210"
    And User clicks the "Track Order" button
    Then The order status should display "Order Found: Shipped"
