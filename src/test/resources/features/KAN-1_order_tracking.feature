Feature: Order Tracking

  Scenario: Display error for incorrect length order number
    Given User is on the Order Tracking page
    When User enters order number "ORD123"
    And User clicks the "Track Order" button
    Then The error message should display "Order number length is incorrect."
