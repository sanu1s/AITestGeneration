Feature: OrderQuest UI Verification - Positive Scenarios

  Scenario: Verify input fields and result areas are present and empty on initial load
    Given I navigate to the OrderQuest application
    Then I should see the "Search Type" dropdown with options "Order ID" and "Tracking Number"
    And I should see an input field with placeholder "Enter Order ID"
    And I should see an empty area for "Order Details"
    And I should see an empty area for "Display Status"
