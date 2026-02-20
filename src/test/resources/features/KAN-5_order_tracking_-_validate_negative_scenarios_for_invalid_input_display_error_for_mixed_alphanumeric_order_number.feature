Feature: Order Tracking - Validate Negative Scenarios for Invalid Input

  Scenario: Display error for mixed alphanumeric order number
    Given User is on the Order Tracking page
    When User enters order number "12A"
    And User clicks the "Track Order" button
    Then The result message should display "Order number must be numeric"
