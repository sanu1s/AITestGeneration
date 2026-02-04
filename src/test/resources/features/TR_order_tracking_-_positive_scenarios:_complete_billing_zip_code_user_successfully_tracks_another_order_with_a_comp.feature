Feature: Order Tracking - Positive Scenarios: Complete Billing Zip Code

  Scenario: User successfully tracks another order with a complete billing zip code
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User enters complete billing zip code "10001"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORD67890 has been shipped."
    And The URL should contain "/track/ORD67890"
