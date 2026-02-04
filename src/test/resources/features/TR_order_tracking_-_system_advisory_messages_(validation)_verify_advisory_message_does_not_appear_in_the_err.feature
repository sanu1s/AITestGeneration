Feature: Order Tracking - System Advisory Messages (Validation)

  Scenario: Verify advisory message does not appear in the error section for 'ORD34567'
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number "ORD34567"
    And User clicks the "Track Order" button
    Then The error message should not contain "We are currently experiencing higher than normal volumes."
