Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track a valid delivered order
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should display "Order delivered on 2023-10-26"
