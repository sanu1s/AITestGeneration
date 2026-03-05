Feature: UI Element Visibility and Initial State - Positive Test Cases

  Scenario: Verify Initial Page Title and Search Elements
    Given I am on the Order Quest page
    Then the page title should be "OrderQuest | Premium Order Search"
    And I should see a dropdown with label "Search Type"
    And the "Search Type" dropdown should be pre-selected with "Order ID"
    And the "Order ID" input field should have placeholder "Enter Order ID"
    And I should see a "Search" button with text "Search"
