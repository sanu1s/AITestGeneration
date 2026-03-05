Feature: Order Search - Positive Scenarios

  Scenario: Successful Search by Order ID
    Given I am on the Order Search page
    And the error message area is hidden
    And the order details area is hidden
    When I select "Order ID" from the search type dropdown
    And I enter "ORD12345" into the order ID input field
    And I click the "Search" button
    Then the order details area should display "123 Main St, Anytown, USA"
    And the order details area should display "456 Oak Ave, Anytown, USA"
    And the order details area should display "2023-12-31"
    And the order details area should be visible
    And the error message area should be hidden
