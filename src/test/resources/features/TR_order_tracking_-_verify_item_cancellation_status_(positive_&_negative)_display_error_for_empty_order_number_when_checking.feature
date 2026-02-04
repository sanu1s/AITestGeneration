Feature: Order Tracking - Verify Item Cancellation Status (Positive & Negative)

  Scenario: Display error for empty order number when checking item status
    Given User is on the order tracking page
    When User leaves order number field empty
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
