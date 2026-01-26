Feature: Order Tracking

  Scenario: Display error for an invalid format order number
    Given User is on the order tracking page
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The result message should display "Invalid order number format."
