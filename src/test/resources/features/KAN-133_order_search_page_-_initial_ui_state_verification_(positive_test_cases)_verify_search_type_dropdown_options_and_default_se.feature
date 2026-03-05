Feature: Order Search Page - Initial UI State Verification (Positive Test Cases)

  Scenario: Verify Search Type Dropdown Options and Default Selection
    Given I am on the Order Search Page
    Then the "searchType" dropdown should have options: "Order ID,Tracking Number"
    And the "searchType" dropdown should display selected option as "Order ID"
