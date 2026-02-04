Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Attempt to track an order with an empty order number
    Given User is on the order tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Please enter an order number."
