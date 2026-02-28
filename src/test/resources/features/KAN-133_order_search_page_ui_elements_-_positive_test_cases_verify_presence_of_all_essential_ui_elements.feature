Feature: Order Search Page UI Elements - Positive Test Cases

  Scenario: Verify presence of all essential UI elements
    Given User navigates to the Order Search page
    Then The page title should contain "Order Search"
    And The "Order Number" input field should be visible
    And The "Tracking Number" input field should be visible
    And The "Track Order" button should be visible
    And The search results area should be visible and empty
