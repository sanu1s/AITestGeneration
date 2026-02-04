Feature: Order Tracking - Positive Scenarios for Mixed Status

  Scenario: User tracks a successfully delivered order
    Given User is on the order tracking page "https://example.com/trackorder"
    When User enters order number "DELIVERED456"
    And User clicks the "Track Order" button
    Then The status message should display "Your order DELIVERED456 has been successfully delivered."
