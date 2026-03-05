Feature: Order Search - Positive Scenarios

  Scenario: Successful Order ID Search with Valid Data
    Given I am on the Order Search Page
    And I ensure 'Order ID' is selected in the search type dropdown
    When I enter a valid order number "ORD12345" into the order ID input field
    And I click the "Search" button
    Then the order details section should be visible
    And the order details should display customer shipping address "123 Main St, Anytown, USA"
    And the order details should display customer billing address "456 Oak Ave, Anytown, USA"
    And the order details should display delivery date "2023-12-31"
    And the error message section should be hidden
