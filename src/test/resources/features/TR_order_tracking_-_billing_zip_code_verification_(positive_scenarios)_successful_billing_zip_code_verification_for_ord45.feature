Feature: Order Tracking - Billing Zip Code Verification (Positive Scenarios)

  Scenario: Successful billing zip code verification for ORD456
    Given I am on the order tracking page
    And I enter order number "ORD456"
    And I click the "Track Order" button
    And I am prompted to provide billing zip code
    When I enter billing zip code "10001"
    And I click the "Verify Zip Code" button
    Then the order status should display "Order ORD456 status: Processing"
