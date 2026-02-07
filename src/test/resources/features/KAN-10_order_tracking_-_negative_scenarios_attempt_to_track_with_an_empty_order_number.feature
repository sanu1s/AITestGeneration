Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track with an empty order number
    Given I am on the order tracking page
    When I enter order number ""
    And I click the "Track Order" button
    Then the result message should display "Order number cannot be empty."
