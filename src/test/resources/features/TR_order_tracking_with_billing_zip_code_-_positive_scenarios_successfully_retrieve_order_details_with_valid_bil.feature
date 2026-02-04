Feature: Order Tracking with Billing Zip Code - Positive Scenarios

  Scenario: Successfully retrieve order details with valid billing zip code
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User enters billing zip code "90210"
    And User clicks the "Track Order" button
    Then The order status should be displayed as "Order Delivered on 2023-10-26"
