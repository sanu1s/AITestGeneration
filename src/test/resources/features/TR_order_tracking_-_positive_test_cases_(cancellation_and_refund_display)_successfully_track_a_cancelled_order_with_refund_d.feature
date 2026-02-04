Feature: Order Tracking - Positive Test Cases (Cancellation and Refund Display)

  Scenario: Successfully track a cancelled order with refund details
    Given User is on the order tracking page "https://example.com/trackorder"
    When User enters order number "CANCELLED123"
    And User clicks the "Track Order" button
    Then The status message should display "Thank you for waiting Amanda. I have canceled your order and you will receive a confirmation email of that within the next 24 hours. I see that you were charged but the refund of $142.04 will post back to your account within the next 3-5 business days."
