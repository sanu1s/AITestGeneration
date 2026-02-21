Feature: OrderTracking_PositiveScenarios

  Scenario: Track a valid order number
    Given I am on the order tracking page
    When I enter order number "12345"
    And I click "Track Order"
    Then I should see the result message "The order status Delayed"
