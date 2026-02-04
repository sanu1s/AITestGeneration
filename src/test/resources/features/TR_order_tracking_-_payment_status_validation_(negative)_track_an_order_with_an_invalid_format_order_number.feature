Feature: Order Tracking - Payment Status Validation (Negative)

  Scenario: Track an order with an invalid format order number
    Given user is on the order tracking page
    When user enters order number "INVALID#" with an invalid format
    And user clicks the "Track Order" button
    Then the error message should display "Invalid order number format. Please use alphanumeric characters."
