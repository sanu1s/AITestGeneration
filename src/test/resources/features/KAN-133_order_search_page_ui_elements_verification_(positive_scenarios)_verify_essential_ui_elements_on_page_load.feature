Feature: Order Search Page UI Elements Verification (Positive Scenarios)

  Scenario: Verify Essential UI Elements on Page Load
    Given I navigate to the Order Search page
    Then I should see the title "Order Search"
    And I should see the search type dropdown
    And I should see the input field for search query
    And I should see the "Search" button
    And I should see an empty area for order details
    And I should see an empty area for display status
    And I should see an empty area for error messages
