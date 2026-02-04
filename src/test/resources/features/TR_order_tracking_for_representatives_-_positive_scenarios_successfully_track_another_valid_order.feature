Feature: Order Tracking for Representatives - Positive Scenarios

  Scenario: Successfully Track Another Valid Order
    Given the representative is on the order tracking page "https://example.com/trackorder"
    When the representative enters order number "ORD23456"
    And clicks the "Track Order" button
    Then the status message should display "Order ORD23456 is In Transit"
