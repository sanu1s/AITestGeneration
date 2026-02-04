Feature: Order Tracking - Input Validation

  Scenario: Invalid order number format displays specific error, not name search suggestion (Negative)
    Given I am on the order tracking page
    When I enter order number "ABC"
    And I click the "Track Order" button
    Then the error message should display "Please enter a valid order number."
    And the result message should not display "Let me try with your name, one moment."
