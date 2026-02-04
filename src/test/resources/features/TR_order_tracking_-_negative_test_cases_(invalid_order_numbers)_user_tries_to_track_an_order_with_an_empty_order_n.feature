Feature: Order Tracking - Negative Test Cases (Invalid Order Numbers)

  Scenario: User tries to track an order with an empty order number
    Given User is on the order tracking page "https://example.com/trackorder"
    When User leaves the order number field empty
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
