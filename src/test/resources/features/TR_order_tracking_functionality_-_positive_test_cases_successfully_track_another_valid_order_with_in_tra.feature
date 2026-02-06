Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully track another valid order with in-transit status
    Given User is on the order tracking page
    When User enters order number "987654321"
    And User clicks the "Track Order" button
    Then The order status should display "Order 987654321 status: In Transit, estimated delivery July 28-29"
