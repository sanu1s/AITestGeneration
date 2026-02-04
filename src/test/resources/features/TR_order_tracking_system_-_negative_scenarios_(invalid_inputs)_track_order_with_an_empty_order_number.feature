Feature: Order Tracking System - Negative Scenarios (Invalid Inputs)

  Scenario: Track order with an empty order number
    Given User is on the order tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Order Number cannot be empty."
