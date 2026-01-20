Feature: OrderTrackingValidation.feature

  Scenario: Tracking an order with an invalid format order number
    Given User is on the order tracking page
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format."
