Feature: Order Tracking - Negative Scenarios for Second Scheduling Email

  Scenario: User tracks order with duplicate second email
    Given User navigates to the order tracking page
    When User enters order number "ORD003_DUPLICATE"
    And User clicks the "Track Order" button
    Then The error message should display "Warning: Duplicate scheduling email detected. Please contact support if you received two identical emails."
    And The current URL should be "https://example.com/track/ORD003_DUPLICATE"
