Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track a valid order and verify delayed status and delivery date
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should display "Delayed"
    And The delivery date should be "2024-12-31"
