Feature: OrderTracking_EmptyInput

  Scenario: User submits an empty order number
    Given User is on the Order Tracking page
    When User leaves the order number field empty
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
