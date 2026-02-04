Feature: Order Tracking - Negative Scenarios for Invalid Orders

  Scenario: Verify Error Message for Empty Order Number
    Given User is on the order tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Please enter an order number."
