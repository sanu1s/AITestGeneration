Feature: Order Tracking - Positive Scenarios

  Scenario: User successfully tracks an existing order for price adjustment request
    Given User is on the order tracking page
    When User enters order number "181983817823"
    And User clicks the "Track Order" button
    Then The order status should display "Order Found: 181983817823"
