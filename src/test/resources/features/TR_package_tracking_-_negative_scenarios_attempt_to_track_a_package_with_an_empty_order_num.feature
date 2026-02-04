Feature: Package Tracking - Negative Scenarios

  Scenario: Attempt to track a package with an empty order number
    Given User is on the package tracking page
    When User leaves the order number field empty
    And User clicks the "Track Order" button
    Then The error message should display "Order Number cannot be empty."
