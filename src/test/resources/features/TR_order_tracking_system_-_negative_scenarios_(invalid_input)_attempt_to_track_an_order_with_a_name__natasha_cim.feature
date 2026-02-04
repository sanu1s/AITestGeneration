Feature: Order Tracking System - Negative Scenarios (Invalid Input)

  Scenario: Attempt to track an order with a name 'Natasha cimino'
    Given User is on the order tracking page
    When User enters order number "Natasha cimino"
    And User clicks the Track Order button
    Then The error message should display "Invalid Order"
