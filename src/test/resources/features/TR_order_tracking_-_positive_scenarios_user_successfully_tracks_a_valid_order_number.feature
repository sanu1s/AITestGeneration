Feature: Order Tracking - Positive Scenarios

  Scenario: User successfully tracks a valid order number
    Given User is on the order tracking page
    When User enters order number "181642000000"
    And User clicks the "Track Order" button
    Then The status message should display "Order '181642000000' is being processed."
