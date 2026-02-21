Feature: Order Tracking - Negative Test Cases

  Scenario: User leaves the order number field empty
    Given User navigates to the order tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Order number must be numeric123123123"
