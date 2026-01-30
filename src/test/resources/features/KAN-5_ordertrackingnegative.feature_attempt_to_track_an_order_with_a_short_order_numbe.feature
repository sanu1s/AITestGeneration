Feature: OrderTrackingNegative.feature

  Scenario: Attempt to track an order with a short order number (less than 2 characters)
    Given User navigates to the order tracking page
    When User enters order number "1"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order No"
