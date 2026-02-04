Feature: Order Tracking - Positive Scenarios with Billing Zip Code

  Scenario: User successfully retrieves order details with valid order number and billing zip code
    Given User is on the order tracking page
    When User enters order number "ORDER123"
    And User enters billing zip code "90210"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORDER123 is being processed. Expected delivery: 2024-07-30."
