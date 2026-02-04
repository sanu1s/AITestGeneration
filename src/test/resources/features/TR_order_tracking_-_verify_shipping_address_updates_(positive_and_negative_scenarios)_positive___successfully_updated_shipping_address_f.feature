Feature: Order Tracking - Verify Shipping Address Updates (Positive and Negative Scenarios)

  Scenario: Positive - Successfully updated shipping address for an order
    Given I am on the order tracking page
    When I enter order number "ORD78901"
    And I click the "Track Order" button
    Then the order details should display "Shipping Address: 123 New Street, Anytown, 12345"
