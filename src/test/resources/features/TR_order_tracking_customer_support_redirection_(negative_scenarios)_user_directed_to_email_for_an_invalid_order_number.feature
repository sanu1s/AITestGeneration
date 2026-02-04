Feature: Order Tracking Customer Support Redirection (Negative Scenarios)

  Scenario: User directed to email for an invalid order number format
    Given User navigates to "https://www.example.com/track"
    When User enters order number "INVALID#FORMAT!"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format. Please email customer service for further assistance."
