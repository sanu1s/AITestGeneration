Feature: Order Tracking - Negative Scenarios for Item Restock and Reservation Status

  Scenario: Tracking an order that is unexpectedly marked as "reserved"
    Given User is on the order tracking page "http://localhost:8080/track-order"
    When User enters order number "ORD_UNWANTED_RESERVE_003"
    And User clicks the "Track Order" button
    Then The status message should display "Your order ORD_UNWANTED_RESERVE_003 is currently reserved."
    And The error message should display "Contact support if you wish to change reservation status."
