Feature: Order Cancellation Status Verification - Positive Test Cases

  Scenario: Verify the exact cancellation confirmation message for another specific cancelled order.
    Given User is on the order tracking page
    When User enters order number "CANCELLED_ORD2"
    And User clicks the "Track Order" button
    Then The status message should display "I was able to cancel The Morgan Simple Desk Hutch. Please allow 24-48 hours for the order to reflect as canceled and cancelation notification to be sent. Your refund will reflect within 3-5 business days."
