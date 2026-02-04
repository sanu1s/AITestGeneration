Feature: Order Tracking - Positive Scenarios

  Scenario: Track another valid existing order for a single bed frame
    Given User is on the order tracking page
    When User enters order number "BEDFRAME456"
    And User clicks the "Track Order" button
    Then The order status should display "Order BEDFRAME456 is shipped. Quantity: 1 bed frame."
