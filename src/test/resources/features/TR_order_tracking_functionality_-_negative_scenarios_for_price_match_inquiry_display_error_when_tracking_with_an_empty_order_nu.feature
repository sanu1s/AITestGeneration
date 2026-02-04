Feature: Order Tracking Functionality - Negative Scenarios for Price Match Inquiry

  Scenario: Display error when tracking with an empty order number
    Given User is on the order tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
