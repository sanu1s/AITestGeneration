Feature: OrderTracking_NegativeScenarios

  Scenario: Tracking with an order number that is too short
    Given I am on the order tracking page
    When I enter order number "ORD1"
    And I click the "Track Order" button
    Then I should see an error message "Order number must be at least 8 characters long."
