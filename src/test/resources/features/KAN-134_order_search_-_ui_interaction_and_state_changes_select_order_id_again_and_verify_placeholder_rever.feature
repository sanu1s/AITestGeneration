Feature: Order Search - UI Interaction and State Changes

  Scenario: Select Order ID again and verify placeholder reverts
    Given I am on the Order Search Page
    When I select "Tracking Number" from the search type dropdown
    And I select "Order ID" from the search type dropdown
    Then the "orderIdInput" field should have placeholder "Enter Order ID"
