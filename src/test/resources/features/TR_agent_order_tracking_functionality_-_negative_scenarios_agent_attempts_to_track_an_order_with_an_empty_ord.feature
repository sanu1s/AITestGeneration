Feature: Agent Order Tracking Functionality - Negative Scenarios

  Scenario: Agent attempts to track an order with an empty order number
    Given Agent is on the order tracking page
    When Agent enters order number ""
    And Agent clicks the "Track Order" button
    Then The error message should display "Order Number cannot be empty."
