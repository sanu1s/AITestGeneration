Feature: Order Tracking Validations

  Scenario: Track an order with empty input
    Given User is on the order tracking page
    When User leaves the order number field empty
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
