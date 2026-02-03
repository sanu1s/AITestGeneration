Feature: Order Tracking Service - Positive Scenarios

  Scenario: Successfully track another valid order number
    Given I am on the order tracking page
    When I enter order number "ORD456"
    And I click the "Track Order" button
    Then I should see the order status "The order status Delayed"
