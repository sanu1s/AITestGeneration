Feature: Order Status Search - Negative Scenarios (Input Validation)

  Scenario: Display error for empty order ID
    Given User is on the Order Tracking page
    When User selects "Order ID" as search type
    And User enters order ID ""
    And User clicks the "Search" button
    Then The error message should display "Order number must be numeric"
