Feature: Order Tracking - Refund Status Check (Positive Cases)

  Scenario: User successfully tracks an order with a processed refund status
    Given User is on the order tracking page
    When User enters order number "REFUNDED123"
    And User clicks the "Track Order" button
    Then The status message should display "Refund Processed. Your money has been refunded."
