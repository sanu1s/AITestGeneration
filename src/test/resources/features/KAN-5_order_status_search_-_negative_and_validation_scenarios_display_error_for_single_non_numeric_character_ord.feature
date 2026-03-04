Feature: Order Status Search - Negative and Validation Scenarios

  Scenario: Display error for single non-numeric character order ID
    Given User is on the Order Status tracking page
    When User selects "Order ID" as search type
    And User enters order number "A"
    And User clicks the "Search" button
    Then The error message "Order number must be numeric" should be displayed in the "error" section
