Feature: OrderTracking_NegativeScenarios_OrderNumberLengthValidation

  Scenario: User enters an invalid order number, then corrects it
    Given User is on the order tracking page
    When User enters order number "1234567890"
    Then The error message should display "Order number must be less than 10 digits"
    And The "Track Order" button should be disabled
    When User corrects the order number to "123456789"
    Then The error message should disappear
    And The "Track Order" button should be enabled
