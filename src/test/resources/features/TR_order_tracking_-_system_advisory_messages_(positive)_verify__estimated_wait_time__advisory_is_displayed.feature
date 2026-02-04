Feature: Order Tracking - System Advisory Messages (Positive)

  Scenario: Verify 'Estimated wait time' advisory is displayed for valid order 'ORD67890'
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The status message should contain "The estimated wait time to connect with a care representative is approximately 0-5 minutes."
