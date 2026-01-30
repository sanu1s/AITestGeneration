Feature: Order Tracking - Negative Scenarios

  Scenario: Track an order number with invalid format
    Given I am on the order tracking page
    When I enter an invalid format order number "ORD#123"
    And I click the "Track Order" button
    Then I should see the error message "Invalid order number format." in the result
