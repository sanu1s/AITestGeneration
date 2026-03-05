Feature: Order Search - UI State and Interaction Verification

  Scenario: Initial UI State Verification
    Given I am on the Order Search page
    Then the search type dropdown should be visible
    And the search type dropdown should be selected with "Order ID"
    And the order ID input field should be visible
    And the order ID input field should have placeholder "Enter Order ID"
    And the search button should be visible
    And the order details area should be hidden
    And the error message area should be hidden
    And the error message paragraph should be hidden
