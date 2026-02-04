Feature: Order Retrieval by Billing Zip Code - Positive Scenarios

  Scenario: Successfully retrieve another order details with a different valid billing zip code
    Given I am on the order retrieval page
    When I enter billing zip code "90210"
    And I click the "Retrieve Order" button
    Then I should see the order details for "Order #ABC-90210"
