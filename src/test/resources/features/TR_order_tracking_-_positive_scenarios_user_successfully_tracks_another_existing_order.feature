Feature: Order Tracking - Positive Scenarios

  Scenario: User successfully tracks another existing order
    Given User is on the order tracking page
    When User enters order number "987654321098"
    And User clicks the "Track Order" button
    Then The order status should display "Order Found: 987654321098"
