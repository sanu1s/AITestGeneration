Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Verify Tracking with Another Valid Order Number - Shipped
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD67890 has been shipped."
