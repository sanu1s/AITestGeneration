Feature: Order Tracking with Billing Zip Code - Positive Scenarios

  Scenario: Successfully retrieve another order with a different valid billing zip code
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User enters billing zip code "10001"
    And User clicks the "Track Order" button
    Then The order status should be displayed as "Order Out for Delivery"
