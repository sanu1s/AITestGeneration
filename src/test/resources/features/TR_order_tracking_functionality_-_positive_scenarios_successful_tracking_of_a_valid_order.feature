Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: Successful tracking of a valid order
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the Track Order button
    Then The status message should display "Order ORD12345 is being processed."
    And The URL should be "https://example.com/track/ORD12345"
