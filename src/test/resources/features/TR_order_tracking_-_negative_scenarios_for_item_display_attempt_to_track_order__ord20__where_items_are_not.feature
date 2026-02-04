Feature: Order Tracking - Negative Scenarios for Item Display

  Scenario: Attempt to track order 'ORD20' where items are not displayed
    Given User is on the order tracking page
    When User enters order number "ORD20"
    And User clicks the "Track Order" button
    Then The error message should display "Order details could not be retrieved."
