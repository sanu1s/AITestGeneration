Feature: Order Tracking Service - Negative Scenarios

  Scenario: Attempt to track an invalid order number
    Given I am on the order tracking page
    When I enter order number "INVALID789"
    And I click the "Track Order" button
    Then I should see an error message "Order not found."
