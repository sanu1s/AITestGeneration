Feature: Order Tracking - Negative Scenarios for Item Display

  Scenario: Attempt to track order 'ORD-ITEM-MISSING' where items are not displayed
    Given User is on the order tracking page
    When User enters order number "ORD-ITEM-MISSING"
    And User clicks the "Track Order" button
    Then The error message should display "No items found for this order."
