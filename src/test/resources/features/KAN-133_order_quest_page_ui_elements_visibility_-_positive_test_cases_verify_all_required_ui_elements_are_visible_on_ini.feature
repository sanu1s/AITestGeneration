Feature: Order Quest Page UI Elements Visibility - Positive Test Cases

  Scenario: Verify all required UI elements are visible on initial page load
    Given I am on the Order Quest page
    Then I should see the page title "Order Quest"
    And I should see a prominent heading "Order Search"
    And I should see a search type dropdown with "Order ID" selected
    And I should see an input field with placeholder "Enter Order ID"
    And I should see a "Search" button
    And I should see an empty area for search results
