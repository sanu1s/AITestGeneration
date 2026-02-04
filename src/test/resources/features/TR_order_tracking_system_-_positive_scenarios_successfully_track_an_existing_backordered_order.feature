Feature: Order Tracking System - Positive Scenarios

  Scenario: Successfully Track an Existing Backordered Order
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "0042557137"
    And User clicks the "Track Order" button
    Then The status message should display "Order 0042557137 is currently Backordered. We will process it as soon as possible."
