Feature: Order Search - UI State and Interaction Verification

  Scenario: Search Type Selection Changes Input Placeholder
    Given I am on the Order Search page
    When I select "Tracking Number" from the search type dropdown
    Then the order ID input field should have placeholder "Enter Tracking Number"
    When I select "Order ID" from the search type dropdown
    Then the order ID input field should have placeholder "Enter Order ID"
