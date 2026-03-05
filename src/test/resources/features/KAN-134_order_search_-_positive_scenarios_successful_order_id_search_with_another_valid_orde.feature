Feature: Order Search - Positive Scenarios

  Scenario: Successful Order ID Search with Another Valid Order
    Given I am on the Order Search Page
    And I ensure 'Order ID' is selected in the search type dropdown
    When I enter a valid order number "ORD67890" into the order ID input field
    And I click the "Search" button
    Then the order details section should be visible
    And the order details should display customer shipping address "789 Pine Ln, Othertown, USA"
    And the order details should display customer billing address "101 Elm Blvd, Othertown, USA"
    And the order details should display delivery date "2024-01-15"
    And the error message section should be hidden
