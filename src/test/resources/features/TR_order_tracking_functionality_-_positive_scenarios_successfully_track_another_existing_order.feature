Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: Successfully track another existing order
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The order status message should display "Your order ORD67890 has been delivered."
