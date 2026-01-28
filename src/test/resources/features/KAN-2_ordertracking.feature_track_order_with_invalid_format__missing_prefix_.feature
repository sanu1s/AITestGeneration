Feature: OrderTracking.feature

  Scenario: Track order with invalid format (missing prefix)
    Given User is on the order tracking page
    When User enters order number "12345"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format."
