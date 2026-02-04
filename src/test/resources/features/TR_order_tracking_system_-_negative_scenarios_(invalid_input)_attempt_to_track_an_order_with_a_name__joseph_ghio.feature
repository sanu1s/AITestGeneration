Feature: Order Tracking System - Negative Scenarios (Invalid Input)

  Scenario: Attempt to track an order with a name 'Joseph Ghio'
    Given User is on the order tracking page
    When User enters order number "Joseph Ghio"
    And User clicks the Track Order button
    Then The error message should display "Invalid Order"
