Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Attempt to track with an empty order number
    Given User is on the Order Search page
    When User tracks an empty order number
    Then The result area should display "Order number cannot be empty"
