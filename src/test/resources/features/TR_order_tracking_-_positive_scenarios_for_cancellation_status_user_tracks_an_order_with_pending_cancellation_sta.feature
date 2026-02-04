Feature: Order Tracking - Positive Scenarios for Cancellation Status

  Scenario: User tracks an order with pending cancellation status
    Given User is on the order tracking page
    When User enters order number "9876543210"
    And User clicks the "Track Order" button
    Then The status message should display "Cancellation for order 9876543210 is pending approval."
