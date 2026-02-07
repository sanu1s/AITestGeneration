Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track a valid order
    Given I am on the order tracking page
    When I enter order number "ORD12345"
    And I click the "Track Order" button
    Then the order status should be displayed as "The order status Delayed"
