Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: Successful Order Tracking with Another Valid Order Number
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The order status should display "Order in transit, expected delivery 2024-01-05"
