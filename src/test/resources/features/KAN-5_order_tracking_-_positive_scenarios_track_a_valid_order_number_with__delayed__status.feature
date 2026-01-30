Feature: Order Tracking - Positive Scenarios

  Scenario: Track a valid order number with 'Delayed' status
    Given I am on the order tracking page
    When I enter a valid order number "ORD12345"
    And I click the "Track Order" button
    Then I should see "The order status Delayed" in the result
    And I should see "Delivery Date: 2024-12-31" in the result
