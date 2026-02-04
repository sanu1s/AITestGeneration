Feature: Order Tracking Functionality - Invalid Order Numbers

  Scenario: Attempt to track an order with an empty order number
    Given I am on the order tracking page
    When User leaves the order number field empty
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
