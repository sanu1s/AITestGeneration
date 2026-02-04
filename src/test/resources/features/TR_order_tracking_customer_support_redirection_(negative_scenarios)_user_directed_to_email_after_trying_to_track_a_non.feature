Feature: Order Tracking Customer Support Redirection (Negative Scenarios)

  Scenario: User directed to email after trying to track a non-existent order
    Given User navigates to "https://www.example.com/track"
    When User enters order number "NONEXISTENT-ORD-987"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please wait for a representative for approximately 15 minutes, or email customer service at support@example.com."
