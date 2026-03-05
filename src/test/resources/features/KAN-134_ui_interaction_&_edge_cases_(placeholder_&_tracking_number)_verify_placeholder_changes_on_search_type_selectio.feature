Feature: UI Interaction & Edge Cases (Placeholder & Tracking Number)

  Scenario: Verify Placeholder Changes on Search Type Selection
    Given I am on the Order Search Page
    And I ensure 'Order ID' is selected in the search type dropdown
    Then the order ID input field should have placeholder "Enter Order ID"
    When I select 'Tracking Number' from the search type dropdown
    Then the order ID input field should have placeholder "Enter Tracking Number"
    And I ensure 'Order ID' is selected in the search type dropdown
    Then the order ID input field should have placeholder "Enter Order ID"
