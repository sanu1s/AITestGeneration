Feature: Order Tracking - Knowing the Item (Negative Scenarios)

  Scenario: Cannot identify item for empty order number
    Given User is on the order tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Please enter a valid order number."
