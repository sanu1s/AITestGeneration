Feature: Order Search Page - Search Type Selection (Positive Test Cases)

  Scenario: Change Search Type to Tracking Number and Verify Placeholder
    Given I am on the Order Search Page
    When I select "Tracking Number" from the search type dropdown
    Then the "Order ID" field should have placeholder "Enter Tracking Number"
    And the "searchType" dropdown should display selected option as "Tracking Number"
