Feature: Order Tracking Indefinite Retry Guidance (Negative Test Cases)

  Scenario: System suggests generic retry for unknown errors
    Given User is on the order tracking page
    When User enters order number "UNKNOWN_ERROR_ORD789"
    And User clicks the "Track Order" button
    Then The error message should display "An unknown error occurred. Please try again later."
