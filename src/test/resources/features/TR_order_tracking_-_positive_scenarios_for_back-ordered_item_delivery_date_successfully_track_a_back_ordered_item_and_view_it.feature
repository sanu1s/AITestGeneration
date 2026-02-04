Feature: Order Tracking - Positive Scenarios for Back-ordered Item Delivery Date

  Scenario: Successfully track a back-ordered item and view its estimated delivery window
    Given User is on the order tracking page
    When User enters order number "BACKORDER123"
    And User clicks the "Track Order" button
    Then The status message should display "expected delivery window is from August 6, 2025, to August 8, 2025."
