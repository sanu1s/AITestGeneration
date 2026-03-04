Feature: OrderQuest Page UI - Search Type Selection (Positive)

  Scenario: Select Tracking Number search type
    Given I am on the OrderQuest application page
    When I select "Tracking Number" from the search type dropdown
    Then the input field with ID "orderIdInput" should have placeholder "Enter Tracking Number"
