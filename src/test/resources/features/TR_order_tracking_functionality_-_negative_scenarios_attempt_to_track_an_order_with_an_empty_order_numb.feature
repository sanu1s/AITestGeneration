Feature: Order Tracking Functionality - Negative Scenarios

  Scenario: Attempt to track an order with an empty order number
    Given user is on the order tracking page
    When user leaves the order number field empty
    And user clicks the "Track Order" button
    Then the error message should display "Order number cannot be empty."
