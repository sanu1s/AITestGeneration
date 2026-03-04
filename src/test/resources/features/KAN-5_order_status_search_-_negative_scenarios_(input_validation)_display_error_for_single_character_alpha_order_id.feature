Feature: Order Status Search - Negative Scenarios (Input Validation)

  Scenario: Display error for single character alpha order ID
    Given User is on the Order Tracking page
    When User selects "Order ID" as search type
    And User enters order ID "A"
    And User clicks the "Search" button
    Then The error message should display "Invalid Order No"
