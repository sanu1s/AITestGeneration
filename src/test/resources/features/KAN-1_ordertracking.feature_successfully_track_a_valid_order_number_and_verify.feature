Feature: OrderTracking.feature

  Scenario: Successfully track a valid order number and verify its delayed status
    Given I am on the order tracking page
    When I enter the order number "ORD12345"
    And I click the "Track Order" button
    Then the result should contain "The order status Delayed"
    And the result should contain "Delivery Date: 2024-12-31"
