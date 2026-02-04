Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track a valid order in transit
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The order status should display "Order in transit, estimated delivery 2023-10-30"
