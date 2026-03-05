Feature: UI Interactions and State Transitions

  Scenario: Change Search Type back to Order ID
    Given I am on the Order Search Page
    When I select "Tracking Number" from the search type dropdown
    And I select "Order ID" from the search type dropdown
    Then the "Order ID" field's placeholder should be "Enter Order ID"
    And the "searchType" dropdown should display "Order ID"
    And the "orderDetails" section should be "hidden"
    And the "error" section should be "hidden"
