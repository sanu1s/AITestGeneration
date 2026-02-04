Feature: Order Tracking - Confirmation of Partial Shipping Details (Positive)

  Scenario: Verify system confirms city, state, and zip code for valid order ORD_VALID_002
    Given User is on the order tracking page
    When User enters order number "ORD_VALID_002"
    And User clicks the "Track Order" button
    Then The status message should contain "city: Los Angeles"
    And The status message should contain "state: CA"
    And The status message should contain "zip: 90210"
    And The status message should not contain "apartment number"
