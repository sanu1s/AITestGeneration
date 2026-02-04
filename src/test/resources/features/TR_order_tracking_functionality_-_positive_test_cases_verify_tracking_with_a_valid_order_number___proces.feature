Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Verify Tracking with a Valid Order Number - Processing
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD12345 is being processed."
