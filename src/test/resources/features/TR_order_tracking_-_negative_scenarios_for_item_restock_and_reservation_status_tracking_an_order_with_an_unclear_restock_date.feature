Feature: Order Tracking - Negative Scenarios for Item Restock and Reservation Status

  Scenario: Tracking an order with an unclear restock date
    Given User is on the order tracking page "http://localhost:8080/track-order"
    When User enters order number "ORD_UNCLEAR_RESTOCK_004"
    And User clicks the "Track Order" button
    Then The status message should display "Items for order ORD_UNCLEAR_RESTOCK_004 are currently out of stock."
    And The error message should display "Restock date is TBD. Please check back later."
