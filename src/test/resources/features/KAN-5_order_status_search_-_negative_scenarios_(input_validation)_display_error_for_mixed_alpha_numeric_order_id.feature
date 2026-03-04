Feature: Order Status Search - Negative Scenarios (Input Validation)

  Scenario: Display error for mixed alpha-numeric order ID
    Given User is on the Order Tracking page
    When User selects "Order ID" as search type
    And User enters order ID "123A4"
    And User clicks the "Search" button
    Then The error message should display "Order number must be numeric"
