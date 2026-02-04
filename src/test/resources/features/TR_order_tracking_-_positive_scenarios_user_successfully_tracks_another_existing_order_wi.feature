Feature: Order Tracking - Positive Scenarios

  Scenario: User successfully tracks another existing order with a different status
    Given User is on the order tracking page
    When User enters order number "ORD23456"
    And User clicks the "Track Order" button
    Then The order status should display "Items dispatched, awaiting delivery"
