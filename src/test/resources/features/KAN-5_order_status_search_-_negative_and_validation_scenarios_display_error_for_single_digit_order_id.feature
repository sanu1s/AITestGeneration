Feature: Order Status Search - Negative and Validation Scenarios

  Scenario: Display error for single digit order ID
    Given User is on the Order Status tracking page
    When User selects "Order ID" as search type
    And User enters order number "1"
    And User clicks the "Search" button
    Then The error message "Invalid Order No" should be displayed in the "error" section
