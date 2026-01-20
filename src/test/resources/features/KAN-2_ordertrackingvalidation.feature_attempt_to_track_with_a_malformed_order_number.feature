Feature: OrderTrackingValidation.feature

  Scenario: Attempt to track with a malformed order number
    Given User is on the order tracking page
    When User enters order number "123"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format."
