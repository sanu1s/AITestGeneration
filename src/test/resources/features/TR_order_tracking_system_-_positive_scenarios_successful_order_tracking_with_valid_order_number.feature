Feature: Order Tracking System - Positive Scenarios

  Scenario: Successful Order Tracking with Valid Order Number
    Given User is on the Order Tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD12345 is Shipped"
    And The URL should be "https://example.com/track/ORD12345"
