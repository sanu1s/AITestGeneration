Feature: Order Tracking - Positive Scenarios

  Scenario: Track another valid order showing 'Delivered' status
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the Track Order button
    Then The order status should display "Delivered"
