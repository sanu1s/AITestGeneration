Feature: Order Return Processing - Negative Scenarios

  Scenario: Attempt to process return with an empty order number
    Given User is on the order return page
    When User leaves the order number field empty
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
