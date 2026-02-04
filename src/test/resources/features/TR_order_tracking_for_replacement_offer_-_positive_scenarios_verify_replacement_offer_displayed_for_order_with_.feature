Feature: Order Tracking for Replacement Offer - Positive Scenarios

  Scenario: Verify replacement offer displayed for order with crooked monogram issue (Order 2)
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "ORD90123"
    And User clicks the "Track Order" button
    Then The status message should display "We can go ahead and offer a replacement alongside an inspection for this replacement item."
