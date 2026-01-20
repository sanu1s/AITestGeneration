Feature: Order Tracking - Negative Cases (Validation)

  Scenario: Track order with special characters
    Given User is on the Order Tracking page
    When User enters order number "1234567890!@"
    And User clicks the "Track Order" button
    Then The error message should display "Order number must be 12 digits and numeric."
