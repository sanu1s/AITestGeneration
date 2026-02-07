Feature: Positive Order Tracking for Successfully Processed Orders

  Scenario: Verify tracking of a successfully processed order
    Given I am on the order tracking page
    When I enter order number "ORD_VALID_123"
    And I click the "Track Order" button
    Then the order status should be displayed as "The order status Delayed"
