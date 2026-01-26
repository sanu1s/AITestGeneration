Feature: OrderTracking_NegativeScenario_InvalidFormat

  Scenario: Track order with invalid format order number
    Given User is on the order tracking page
    When User enters order number "INVALID!"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format."
