Feature: Order Tracking - Negative Scenarios for 20% Off Promotion Validity

  Scenario: User tracks a valid order number with no promotion displays standard message
    Given User is on the order tracking page at 'https://example.com/track'
    When User enters order number 'REGULARORDER456'
    And User clicks the 'Track Order' button
    Then The status message should display 'Your order REGULARORDER456 is being processed. No special promotions apply to this order.'
    And The URL should be 'https://example.com/track/REGULARORDER456'
