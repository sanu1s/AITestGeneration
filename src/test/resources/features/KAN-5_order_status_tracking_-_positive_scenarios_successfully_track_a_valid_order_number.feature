Feature: Order Status Tracking - Positive Scenarios

  Scenario: Successfully track a valid order number
    Given I am on the order tracking page
    When I enter order number "ORD12345"
    And I click the "Track Order" button
    Then I should see the order status "The order status Delayed"
