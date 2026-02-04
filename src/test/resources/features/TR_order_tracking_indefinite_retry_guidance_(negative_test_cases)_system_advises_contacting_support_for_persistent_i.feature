Feature: Order Tracking Indefinite Retry Guidance (Negative Test Cases)

  Scenario: System advises contacting support for persistent issues
    Given User is on the order tracking page
    When User enters order number "PERSISTENT_ISSUE_ORD000"
    And User clicks the "Track Order" button
    Then The error message should display "Tracking temporarily unavailable. Please contact support if the issue persists."
