Feature: OrderTrackingValidation.feature

  Scenario: Attempt to track with an order number in an incorrect length
    Given User is on the order tracking page
    When User enters order number "ORD123"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format."
