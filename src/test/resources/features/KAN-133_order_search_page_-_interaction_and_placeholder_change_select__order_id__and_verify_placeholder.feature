Feature: Order Search Page - Interaction and Placeholder Change

  Scenario: Select "Order ID" and verify placeholder
    Given I am on the Order Search Page
    When I select "Order ID" from the search type dropdown
    Then the "orderIdInput" field should have placeholder "Enter Order ID"
