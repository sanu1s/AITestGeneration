Feature: OrderQuest Page UI - Search Type Selection (Positive)

  Scenario: Select Order ID search type
    Given I am on the OrderQuest application page
    When I select "Order ID" from the search type dropdown
    Then the input field with ID "orderIdInput" should have placeholder "Enter Order ID"
