Feature: Order Tracking - Incorrect Price Display (Negative)

  Scenario: Tracking an order shows an unexpected price status
    Given User is on the order tracking page
    When User enters order number "PRICE-MISMATCH-555"
    And User clicks the "Track Order" button
    Then The status message should display "Order PRICE-MISMATCH-555: Status: Review required due to price discrepancy."
