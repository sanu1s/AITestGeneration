Feature: Order Search Page - Initial UI State Verification (Positive Test Cases)

  Scenario: Verify Initial Page Elements and Visibility
    Given I am on the Order Search Page
    Then I should see the page title as "OrderQuest | Premium Order Search"
    And the "searchType" dropdown should be "visible"
    And the "Order ID" field should have placeholder "Enter Order ID"
    And the "Search" button should be "visible"
    And the "Order Details" section should be "visible"
    And the "Order Details" should contain text ""
    And the "error" section should be "hidden"
    And the "errorMessage" section should be "hidden"
