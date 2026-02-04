Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Display error for invalid order format
    Given User is on the order tracking page "https://example.com/trackorder"
    When User enters order number "INVALID123" and clicks the "Track Order" button
    Then The error message should display "Invalid Order Number Format. Please use 'ORD' followed by 5 digits."
