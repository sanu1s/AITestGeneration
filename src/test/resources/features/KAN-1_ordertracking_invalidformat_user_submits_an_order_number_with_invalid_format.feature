Feature: OrderTracking_InvalidFormat

  Scenario: User submits an order number with invalid format
    Given User is on the Order Tracking page
    When User enters order number "INV"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format. Please try again."
