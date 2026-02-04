Feature: Order Tracking for Price Adjustment Inquiry - Invalid Order Numbers

  Scenario: Attempt to track a non-existent order number
    Given User is on the Order Tracking page
    When User enters order number "NONEXISTENT"
    And User clicks the Track Order button
    Then The error message should display "Order NONEXISTENT not found."
    And The URL should be "https://example.com/track"
