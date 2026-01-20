Feature: Order Tracking - Valid Input

  Scenario: Successfully track a delayed order with ORD12345
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the 'Track Order' button
    Then The order status should be "Delayed"
    And The delivery date should be displayed
