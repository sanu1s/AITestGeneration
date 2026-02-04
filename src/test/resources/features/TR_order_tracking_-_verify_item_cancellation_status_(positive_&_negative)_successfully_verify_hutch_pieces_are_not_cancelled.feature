Feature: Order Tracking - Verify Item Cancellation Status (Positive & Negative)

  Scenario: Successfully verify hutch pieces are not cancelled and delivered
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The status message should display "Hutch pieces delivered"
