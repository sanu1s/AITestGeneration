Feature: Order Status Search - Negative and Validation Scenarios

  Scenario: Display error for empty order ID
    Given User is on the Order Status tracking page
    When User selects "Order ID" as search type
    And User enters order number ""
    And User clicks the "Search" button
    Then The error message "Order number must be numeric" should be displayed in the "error" section
