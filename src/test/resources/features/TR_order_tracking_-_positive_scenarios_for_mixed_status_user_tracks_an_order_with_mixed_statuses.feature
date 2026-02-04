Feature: Order Tracking - Positive Scenarios for Mixed Status

  Scenario: User tracks an order with mixed statuses
    Given User is on the order tracking page "https://example.com/trackorder"
    When User enters order number "MIXEDSTATUS123"
    And User clicks the "Track Order" button
    Then The status message should display "It looks your order has a mix of statuses. Here's the detailed information:"
