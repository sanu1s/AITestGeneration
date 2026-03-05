Feature: UI Interactions and State Transitions

  Scenario: Initial Page Load State
    Given I am on the Order Search Page
    Then the "searchType" dropdown should display "Order ID"
    And the "Order ID" field's placeholder should be "Enter Order ID"
    And the "searchBtn" button should be "visible"
    And the "orderDetails" section should be "hidden"
    And the "error" section should be "hidden"
