Feature: Order Tracking - Positive Test Cases

  Scenario: Track another valid order number successfully showing 'Delivered' status
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "ORD4567890"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD4567890 has been 'Delivered'."
