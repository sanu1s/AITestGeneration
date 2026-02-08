Feature: Order Tracking Service - Negative Test Cases

  Scenario: Attempt to track with a special character order number
    Given User is on the order tracking page
    When User enters order number "#$@!%"
    And User clicks the track order button
    Then The error message should display "Invalid Order Number Format"
