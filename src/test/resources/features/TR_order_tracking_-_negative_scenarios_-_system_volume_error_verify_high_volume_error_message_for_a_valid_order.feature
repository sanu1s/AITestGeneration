Feature: Order Tracking - Negative Scenarios - System Volume Error

  Scenario: Verify high volume error message for a valid order number
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The error message should display "We are currently experiencing higher than normal volumes. Please try again later."
