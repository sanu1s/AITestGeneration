Feature: Order Search Page - Search Type Selection (Positive Test Cases)

  Scenario: Change Search Type back to Order ID and Verify Placeholder
    Given I am on the Order Search Page
    When I select "Tracking Number" from the search type dropdown
    And I select "Order ID" from the search type dropdown
    Then the "Order ID" field should have placeholder "Enter Order ID"
    And the "searchType" dropdown should display selected option as "Order ID"
