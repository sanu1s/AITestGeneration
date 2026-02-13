Feature: OrderTracking_NegativeScenarios_OrderNumberLengthValidation

  Scenario: User enters an order number with 10 digits and sees an error
    Given User is on the order tracking page
    When User enters order number "1234567890"
    Then The error message should display "Order number must be less than 10 digits"
    And The "Track Order" button should be disabled
