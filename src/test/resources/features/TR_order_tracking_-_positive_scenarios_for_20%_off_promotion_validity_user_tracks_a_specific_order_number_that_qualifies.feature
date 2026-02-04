Feature: Order Tracking - Positive Scenarios for 20% Off Promotion Validity

  Scenario: User tracks a specific order number that qualifies for an additional 20% off
    Given User is on the order tracking page at 'https://example.com/track'
    When User enters order number 'PROMOORDER123'
    And User clicks the 'Track Order' button
    Then The status message should display 'Your order PROMOORDER123 is being processed. You qualify for an additional 20% off your next purchase!'
    And The URL should be 'https://example.com/track/PROMOORDER123'
