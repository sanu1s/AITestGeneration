Feature: Order Tracking - Valid Input

  Scenario: Successfully track an order with a valid 12-digit numeric order number
    Given I am on the order tracking page
    When I enter order number "123456789012"
    And I click the "Track Order" button
    Then the order status should be "Delayed" and delivery date "2023-12-31"
