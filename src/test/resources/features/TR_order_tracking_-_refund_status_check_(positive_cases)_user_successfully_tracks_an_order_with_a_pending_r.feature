Feature: Order Tracking - Refund Status Check (Positive Cases)

  Scenario: User successfully tracks an order with a pending refund status
    Given User is on the order tracking page
    When User enters order number "REFUNDPENDING456"
    And User clicks the "Track Order" button
    Then The status message should display "Refund Pending. Processing your refund request."
