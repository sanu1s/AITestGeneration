Feature: OrderTracking

  Scenario: Successfully track a delayed order with valid order number
    Given User is on the Order Tracking page
    When User enters order number "ORD12345"
    And User clicks the 'Track Order' button
    Then The order status should be "Delayed"
    And The delivery date should be displayed
