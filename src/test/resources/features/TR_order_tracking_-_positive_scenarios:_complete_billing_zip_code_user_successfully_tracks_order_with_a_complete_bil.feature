Feature: Order Tracking - Positive Scenarios: Complete Billing Zip Code

  Scenario: User successfully tracks order with a complete billing zip code
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User enters complete billing zip code "90210"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORD12345 is being processed."
    And The URL should contain "/track/ORD12345"
