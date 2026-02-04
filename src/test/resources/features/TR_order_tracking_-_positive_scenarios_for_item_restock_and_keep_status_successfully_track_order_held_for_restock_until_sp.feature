Feature: Order Tracking - Positive Scenarios for Item Restock and Keep Status

  Scenario: Successfully track order held for restock until specified date
    Given User is on the order tracking page "http://localhost:8080/track-order"
    When User enters order number "ORD_RESTOCK_HOLD_001"
    And User clicks the "Track Order" button
    Then The status message should display "Your order ORD_RESTOCK_HOLD_001 is being held until items are restocked by the end of this month to August."
