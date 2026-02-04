Feature: Order Tracking - Positive Test Cases

  Scenario: Track a valid order number successfully
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "ORD7890123"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD7890123 is currently 'In Transit'."
