Feature: Order Tracking - Positive Scenarios for Back-ordered Item Delivery Date

  Scenario: Successfully track another back-ordered item and view its estimated delivery window
    Given User is on the order tracking page
    When User enters order number "BACKORDER456"
    And User clicks the "Track Order" button
    Then The status message should display "expected delivery window is from September 1, 2025, to September 3, 2025."
