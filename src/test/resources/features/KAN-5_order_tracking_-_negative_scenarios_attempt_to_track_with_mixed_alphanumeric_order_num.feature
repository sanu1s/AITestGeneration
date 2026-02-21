Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track with mixed alphanumeric order number (also short)
    Given User is on the Order Tracking page
    When User enters order number "ORD1"
    And User clicks the Track Order button
    Then The result message should display "Order number must be numeric"
    And The URL should remain on the Order Tracking page
