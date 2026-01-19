Feature: OrderTrackingValidation.feature

  Scenario: Display error for a too long order number
    Given User is on the order tracking page
    When User enters order number "ORD123456"
    And User clicks the "Track Order" button
    Then The error message should display "Order number must be 8 characters long."
