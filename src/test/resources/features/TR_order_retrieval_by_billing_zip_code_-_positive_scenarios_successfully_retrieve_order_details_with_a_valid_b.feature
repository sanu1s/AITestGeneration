Feature: Order Retrieval by Billing Zip Code - Positive Scenarios

  Scenario: Successfully retrieve order details with a valid billing zip code
    Given I am on the order retrieval page
    When I enter billing zip code "12345"
    And I click the "Retrieve Order" button
    Then I should see the order details for "Order #XYZ-12345"
