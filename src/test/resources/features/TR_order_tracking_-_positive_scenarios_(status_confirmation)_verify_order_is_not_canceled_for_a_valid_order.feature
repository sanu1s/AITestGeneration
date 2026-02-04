Feature: Order Tracking - Positive Scenarios (Status Confirmation)

  Scenario: Verify Order Is Not Canceled for a Valid Order
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The status message should display "Order is not canceled."
