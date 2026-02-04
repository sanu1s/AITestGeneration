Feature: Order Tracking with Billing Zip Code Verification - Positive Scenarios

  Scenario: Track another valid order with correct billing zip code
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User enters billing zip code "10001"
    And User clicks the "Track Order" button
    Then The order status should display "Order Processing"
