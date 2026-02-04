Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: Successful tracking of another valid order
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the Track Order button
    Then The status message should display "Order ORD67890 has been shipped."
    And The URL should be "https://example.com/track/ORD67890"
