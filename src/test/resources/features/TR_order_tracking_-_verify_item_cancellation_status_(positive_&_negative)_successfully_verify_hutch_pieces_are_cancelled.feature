Feature: Order Tracking - Verify Item Cancellation Status (Positive & Negative)

  Scenario: Successfully verify hutch pieces are cancelled
    Given User is on the order tracking page
    When User enters order number "ORD98765"
    And User clicks the "Track Order" button
    Then The status message should display "Hutch pieces cancelled"
