Feature: Order Tracking - Negative Scenarios for Email Mismatch

  Scenario: Verify error when provided email does not match for an order
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "ORD45678"
    And User clicks the "Track Order" button
    Then The error message should display "the email you provided is not the one on the order."
