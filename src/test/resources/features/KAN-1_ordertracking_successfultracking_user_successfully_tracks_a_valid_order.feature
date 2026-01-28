Feature: OrderTracking_SuccessfulTracking

  Scenario: User successfully tracks a valid order
    Given User is on the Order Tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should display "The order status Delayed"
    And The delivery date should be displayed as "2024-07-20"
