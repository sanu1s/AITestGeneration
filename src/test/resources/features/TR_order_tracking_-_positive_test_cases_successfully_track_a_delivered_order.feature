Feature: Order Tracking - Positive Test Cases

  Scenario: Successfully track a delivered order
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD12345 is Delivered"
