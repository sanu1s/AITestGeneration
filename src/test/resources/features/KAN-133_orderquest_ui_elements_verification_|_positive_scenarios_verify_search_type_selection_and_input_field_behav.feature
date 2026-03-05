Feature: OrderQuest UI Elements Verification | Positive Scenarios

  Scenario: Verify search type selection and input field behavior
    Given I am on the OrderQuest page
    When I select "Tracking Number" from the search type dropdown
    Then the search type dropdown should show "Tracking Number" as selected
    And the input field with ID "orderIdInput" should still have placeholder "Enter Order ID"
    When I select "Order ID" from the search type dropdown
    Then the search type dropdown should show "Order ID" as selected
    And the input field with ID "orderIdInput" should still have placeholder "Enter Order ID"
