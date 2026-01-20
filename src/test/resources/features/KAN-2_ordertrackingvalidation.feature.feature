Feature: OrderTrackingValidation.feature

  Scenario: Display error for order number with invalid length
    Given User is on the order tracking page
    When User enters order number "SHORT"
    And User clicks the "Track Order" button
    Then The error message should display "Order number must be 8 characters long."
