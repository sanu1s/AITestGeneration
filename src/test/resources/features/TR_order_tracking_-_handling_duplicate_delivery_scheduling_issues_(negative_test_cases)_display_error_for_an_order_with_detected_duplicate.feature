Feature: Order Tracking - Handling Duplicate Delivery Scheduling Issues (Negative Test Cases)

  Scenario: Display error for an order with detected duplicate delivery scheduling
    Given User is on the order tracking page
    When User enters order number "ORDDUPE001"
    And User clicks the "Track Order" button
    Then The error message should display "Multiple delivery schedules detected. Please contact support."
