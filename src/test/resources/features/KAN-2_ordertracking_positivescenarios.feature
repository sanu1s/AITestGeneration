Feature: OrderTracking_PositiveScenarios

  Scenario: Successfully track a valid order number
    Given I am on the order tracking page
    When I enter order number "ORD12345"
    And I click the "Track Order" button
    Then I should see the status "Delayed"
    And I should see the delivery date "2024-12-31"
