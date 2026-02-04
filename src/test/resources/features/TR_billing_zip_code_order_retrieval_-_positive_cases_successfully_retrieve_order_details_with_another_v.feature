Feature: Billing Zip Code Order Retrieval - Positive Cases

  Scenario: Successfully retrieve order details with another valid billing zip code
    Given User is on the order details retrieval page
    When User enters billing zip code "10001"
    And User clicks the "Retrieve Details" button
    Then Order details should be displayed containing "Order found for zip code 10001"
