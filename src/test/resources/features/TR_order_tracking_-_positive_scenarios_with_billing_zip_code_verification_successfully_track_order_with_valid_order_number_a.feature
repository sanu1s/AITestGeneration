Feature: Order Tracking - Positive Scenarios with Billing Zip Code Verification

  Scenario: Successfully track order with valid order number and billing zip code
    Given I am on the order tracking page
    When I enter order number "ORD12345"
    And I click the "Track Order" button
    Then I should be prompted for the billing zip code
    When I enter billing zip code "90210"
    And I click the "Track Order" button
    Then the order status should be displayed as "Order ORD12345 is Shipped."
