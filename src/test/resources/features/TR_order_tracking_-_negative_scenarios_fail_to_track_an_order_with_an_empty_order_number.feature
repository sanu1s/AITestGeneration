Feature: Order Tracking - Negative Scenarios

  Scenario: Fail to track an order with an empty order number
    Given User is on the order tracking page
    When User enters order number "" and billing zip code "90210"
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
