Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track with an empty order number
    Given User is on the Order Tracking page
    When User enters an empty order number
    And User clicks the Track Order button
    Then The result message should display "Order number must be numeric"
    And The URL should remain on the Order Tracking page
