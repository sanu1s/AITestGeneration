Feature: Order Tracking Validation

  Scenario: Display Error for Mixed Alpha-Numeric and Invalid Length
    Given User is on the order tracking page
    When User enters order number "123AB"
    And User clicks the "Track Order" button
    Then The error message should display "Order number must be numeric."
