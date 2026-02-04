Feature: Order Tracking for Defective Item Inquiry - Negative Scenarios

  Scenario: Attempt to track with an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID_ORD_000"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number. Please check and try again."
    And The current URL should be "https://example.com/track"
