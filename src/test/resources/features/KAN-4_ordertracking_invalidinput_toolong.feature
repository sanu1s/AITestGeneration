Feature: OrderTracking_InvalidInput_TooLong

  Scenario: Display error for order number more than 12 digits
    Given User is on the order tracking page
    When User enters order number "1234567890123"
    And User clicks the "Track Order" button
    Then The error message should display "Order number must be 12 digits long."
