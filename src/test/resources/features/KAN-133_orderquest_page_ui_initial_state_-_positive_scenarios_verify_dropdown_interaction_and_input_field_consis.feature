Feature: OrderQuest Page UI Initial State - Positive Scenarios

  Scenario: Verify Dropdown Interaction and Input Field Consistency
    Given I navigate to the OrderQuest page
    When I select "Tracking Number" from the "searchType" dropdown
    Then the "Tracking Number" option should be selected in the "searchType" dropdown
    And the input field with ID "orderIdInput" should still have placeholder "Enter Order ID"
    When I select "Order ID" from the "searchType" dropdown
    Then the "Order ID" option should be selected in the "searchType" dropdown
    And the input field with ID "orderIdInput" should still have placeholder "Enter Order ID"
