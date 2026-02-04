Feature: Order Tracking - Negative Test Cases (Invalid Order Numbers)

  Scenario: User tries to track an order with an invalid order number
    Given User is on the order tracking page "https://example.com/trackorder"
    When User enters order number "INVALID999"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number. Please check and try again."
