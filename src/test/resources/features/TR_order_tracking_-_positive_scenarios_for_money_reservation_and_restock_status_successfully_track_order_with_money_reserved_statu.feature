Feature: Order Tracking - Positive Scenarios for Money Reservation and Restock Status

  Scenario: Successfully Track Order with Money Reserved Status
    Given User is on the order tracking page
    When User enters order number "ORD_RESERVED_123"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD_RESERVED_123 status: Money Reserved, processing initiated"
