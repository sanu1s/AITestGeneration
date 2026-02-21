Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track with non-numeric order number
    Given User is on the Order Tracking page
    When User enters order number "ABC"
    And User clicks the Track Order button
    Then The result message should display "Order number must be numeric"
    And The URL should remain on the Order Tracking page
