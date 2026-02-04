Feature: Desk Cancellation Status Tracking - Negative Cases

  Scenario: Attempt to track with an empty order number
    Given User navigates to the "order tracking" page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
