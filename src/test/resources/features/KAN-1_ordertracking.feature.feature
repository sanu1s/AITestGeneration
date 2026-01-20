Feature: OrderTracking.feature

  Scenario: Too Short Order Number
    Given User is on the order tracking page
    When User enters order number "ORD"
    And User clicks the "Track Order" button
    Then The error message should display "Order number too short."
