Feature: Order Search Page Initial UI Verification (Positive Test Cases)

  Scenario: Verify Initial Search Type and Placeholder
    Given I am on the Order Search Page
    When I select "Order ID" from the search type dropdown
    Then the "orderIdInput" field should have placeholder "Enter Order ID"
