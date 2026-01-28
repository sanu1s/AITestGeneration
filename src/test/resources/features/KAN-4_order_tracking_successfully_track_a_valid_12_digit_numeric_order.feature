Feature: Order Tracking

  Scenario: Successfully track a valid 12-digit numeric order
    Given User is on the order tracking page
    When User enters order number "123456789012"
    And User clicks the "Track Order" button
    Then The order status should be "Delayed"
    And The result should contain "Delivery Date: 2024-12-31"
