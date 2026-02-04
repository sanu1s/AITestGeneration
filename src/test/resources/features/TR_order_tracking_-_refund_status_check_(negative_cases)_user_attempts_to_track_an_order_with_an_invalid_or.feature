Feature: Order Tracking - Refund Status Check (Negative Cases)

  Scenario: User attempts to track an order with an invalid order number for refund status
    Given User is on the order tracking page
    When User enters order number "INVALIDREFUND789"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check your order number."
