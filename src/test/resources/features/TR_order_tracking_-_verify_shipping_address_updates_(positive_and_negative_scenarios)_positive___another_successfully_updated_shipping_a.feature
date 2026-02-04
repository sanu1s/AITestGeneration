Feature: Order Tracking - Verify Shipping Address Updates (Positive and Negative Scenarios)

  Scenario: Positive - Another successfully updated shipping address for an order
    Given I am on the order tracking page
    When I enter order number "ORD23456"
    And I click the "Track Order" button
    Then the order details should display "Shipping Address: 456 Main Avenue, Othercity, 67890"
