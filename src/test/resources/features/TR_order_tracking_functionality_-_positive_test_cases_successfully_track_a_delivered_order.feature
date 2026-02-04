Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully track a delivered order
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD67890 is Delivered"
    And User should be on the URL "https://example.com/track-order"
