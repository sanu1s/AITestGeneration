Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track an order with 'Processing' status
    Given User is on the order tracking page
    When User enters order number "ORD_PRO_12345"
    And User clicks the "Track Order" button
    Then The status message should display "Your order ORD_PRO_12345 is currently Processing."
