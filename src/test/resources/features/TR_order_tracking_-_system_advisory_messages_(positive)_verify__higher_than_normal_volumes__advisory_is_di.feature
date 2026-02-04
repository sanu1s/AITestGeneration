Feature: Order Tracking - System Advisory Messages (Positive)

  Scenario: Verify 'Higher than normal volumes' advisory is displayed for valid order 'ORD12345'
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The status message should contain "We are currently experiencing higher than normal volumes."
