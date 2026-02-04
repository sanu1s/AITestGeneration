Feature: Order Tracking - Positive Test Cases

  Scenario: Successfully track another valid order and verify historical status
    Given User is on the order tracking page
    When User enters order number "ORD789012"
    And User clicks the "Track Order" button
    Then The order status should display "Your order ORD789012 was delivered on 2023-07-20."
