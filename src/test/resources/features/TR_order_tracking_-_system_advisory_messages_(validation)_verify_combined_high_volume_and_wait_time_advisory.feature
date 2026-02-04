Feature: Order Tracking - System Advisory Messages (Validation)

  Scenario: Verify combined high volume and wait time advisory message is displayed for 'ORD98765'
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number "ORD98765"
    And User clicks the "Track Order" button
    Then The status message should contain "We are currently experiencing higher than normal volumes. The estimated wait time to connect with a care representative is approximately 0-5 minutes."
