Feature: Order Tracking System - Negative Test Cases for Invalid Inputs

  Scenario: User enters a non-order string into the order number field
    Given User is on the order tracking page
    When User enters order number "Will you dispose of an outgrown anywhere chair?"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number format."
