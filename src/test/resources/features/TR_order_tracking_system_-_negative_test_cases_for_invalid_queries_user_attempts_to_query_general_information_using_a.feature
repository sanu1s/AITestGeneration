Feature: Order Tracking System - Negative Test Cases for Invalid Queries

  Scenario: User attempts to query general information using a different phrasing
    Given User is on the order tracking page
    When User enters "Tell me your operating hours" into the order number field
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number. Please enter a valid tracking ID."
