Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully Track Order with Valid Order Number
    Given User is on the order tracking page
    When User enters order number "181331801184"
    And User clicks the "Track Order" button
    Then The status message should display "Order 181331801184 found. Status: Shipped"
