Feature: Order Tracking - Negative Scenarios

  Scenario: Track a non-existent order number
    Given I am on the order tracking page
    When I enter a non-existent order number "NONEXIST"
    And I click the "Track Order" button
    Then I should see the error message "Order not found." in the result
