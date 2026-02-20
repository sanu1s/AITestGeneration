Feature: Order Tracking Input Validations - Negative Test Cases

  Scenario: Attempt to track an order with less than 2 digits (e.g., zero)
    Given User is on the order tracking page
    When User enters order number "0"
    And User clicks the "Track Order" button
    Then The status message should display "Invalid Order No"
