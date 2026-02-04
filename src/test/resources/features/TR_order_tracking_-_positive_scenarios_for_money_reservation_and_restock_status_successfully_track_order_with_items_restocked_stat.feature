Feature: Order Tracking - Positive Scenarios for Money Reservation and Restock Status

  Scenario: Successfully Track Order with Items Restocked Status
    Given User is on the order tracking page
    When User enters order number "ORD_RESTOCKED_456"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD_RESTOCKED_456 status: Items Restocked, ready for shipment"
