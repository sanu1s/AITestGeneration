Feature: Order Search Page - UI Elements and State Transitions

  Scenario: Verify Initial UI State
    Given I am on the Order Search Page
    Then the "Order Number" field should have placeholder "Enter Order ID"
    And the "searchType" dropdown should display "Order ID"
    And the "orderDetails" section should be "visible"
    And the "error" section should be "hidden"
