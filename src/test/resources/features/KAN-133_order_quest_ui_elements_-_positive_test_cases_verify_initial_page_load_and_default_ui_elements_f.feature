Feature: Order Quest UI Elements - Positive Test Cases

  Scenario: Verify initial page load and default UI elements for Order ID search
    Given I navigate to "http://orderquest.com:7070"
    Then I should see the page title "OrderQuest | Premium Order Search"
    And I should see the search type dropdown with "Order ID" selected by default
    And I should see the input field with placeholder "Enter Order ID"
    And I should see a "Search" button
    And I should see an empty area for displaying search results
