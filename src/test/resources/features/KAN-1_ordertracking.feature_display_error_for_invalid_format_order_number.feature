Feature: OrderTracking.feature

  Scenario: Display error for invalid format order number
    Given User is on the order tracking page
    When User enters order number "INVALID"
    And User clicks the "Track Order" button
    Then The result message should display "Invalid order number format."
