Feature: Order Tracking

  Scenario: Track an existing order with a specific number
    Given I am on the order tracking page
    When I enter order number "ORD12345"
    And I click the "Track Order" button
    Then I should see the order status "Delayed"
    And I should see "Delivery Date"
