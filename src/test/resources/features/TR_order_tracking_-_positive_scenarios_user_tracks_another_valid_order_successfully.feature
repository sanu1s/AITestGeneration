Feature: Order Tracking - Positive Scenarios

  Scenario: User tracks another valid order successfully
    Given User is on the order tracking page
    When User enters order number "ORD98765"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD98765 is Delivered"
