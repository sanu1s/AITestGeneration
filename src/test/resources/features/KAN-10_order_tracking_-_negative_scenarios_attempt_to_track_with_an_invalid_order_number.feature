Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track with an invalid order number
    Given I am on the order tracking page
    When I enter order number "INVALID123"
    And I click the "Track Order" button
    Then the result message should display "Order not found. Please check your order number."
