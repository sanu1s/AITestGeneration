Feature: OrderTrackingValidation.feature

  Scenario: User cannot track an order with an order number of incorrect length
    Given User is on the order tracking page
    When User enters order number "ORD1"
    And User clicks the "Track Order" button
    Then The error message should display "Order Number must be 8 characters long"
