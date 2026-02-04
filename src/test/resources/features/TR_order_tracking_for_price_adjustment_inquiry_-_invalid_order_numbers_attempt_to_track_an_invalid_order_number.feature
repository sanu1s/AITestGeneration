Feature: Order Tracking for Price Adjustment Inquiry - Invalid Order Numbers

  Scenario: Attempt to track an invalid order number
    Given User is on the Order Tracking page
    When User enters order number "INVALID123"
    And User clicks the Track Order button
    Then The error message should display "Invalid Order Number. Please check and try again."
    And The URL should be "https://example.com/track"
