Feature: Order Tracking - Negative Scenarios

  Scenario: Track order with empty input
    Given User is on the order tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The result message should contain "Please enter an order number."
