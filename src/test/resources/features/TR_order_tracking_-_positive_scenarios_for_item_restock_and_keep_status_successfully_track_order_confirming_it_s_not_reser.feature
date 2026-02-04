Feature: Order Tracking - Positive Scenarios for Item Restock and Keep Status

  Scenario: Successfully track order confirming it's not reserved and will be kept
    Given User is on the order tracking page "http://localhost:8080/track-order"
    When User enters order number "ORD_NO_RESERVE_002"
    And User clicks the "Track Order" button
    Then The status message should display "Your order ORD_NO_RESERVE_002 is not reserved and will be kept until restock."
