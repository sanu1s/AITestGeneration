Feature: OrderTracking_NegativeScenarios

  Scenario: Enter empty order number
    Given User is on the order tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The result message should display "Order number must be numeric"
