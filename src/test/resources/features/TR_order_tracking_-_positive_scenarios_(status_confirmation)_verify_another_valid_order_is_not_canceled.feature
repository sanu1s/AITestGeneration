Feature: Order Tracking - Positive Scenarios (Status Confirmation)

  Scenario: Verify Another Valid Order Is Not Canceled
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The status message should display "Order is not canceled."
