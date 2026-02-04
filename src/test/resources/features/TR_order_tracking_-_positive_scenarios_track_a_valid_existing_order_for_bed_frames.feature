Feature: Order Tracking - Positive Scenarios

  Scenario: Track a valid existing order for bed frames
    Given User is on the order tracking page
    When User enters order number "BEDFRAME123"
    And User clicks the "Track Order" button
    Then The order status should display "Order BEDFRAME123 is being processed. Quantity: 2 bed frames."
