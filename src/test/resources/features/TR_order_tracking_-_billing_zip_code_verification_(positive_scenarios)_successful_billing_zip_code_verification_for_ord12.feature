Feature: Order Tracking - Billing Zip Code Verification (Positive Scenarios)

  Scenario: Successful billing zip code verification for ORD123
    Given I am on the order tracking page
    And I enter order number "ORD123"
    And I click the "Track Order" button
    And I am prompted to provide billing zip code
    When I enter billing zip code "90210"
    And I click the "Verify Zip Code" button
    Then the order status should display "Order ORD123 status: Shipped"
