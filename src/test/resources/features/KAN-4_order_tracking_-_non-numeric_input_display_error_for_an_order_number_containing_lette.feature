Feature: Order Tracking - Non-Numeric Input

  Scenario: Display error for an order number containing letters
    Given I am on the order tracking page
    When I enter order number "ABC123456789"
    And I click the "Track Order" button
    Then the error message should display "Order number must be numeric."
