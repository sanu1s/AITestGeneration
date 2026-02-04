Feature: Order Cancellation Information Prompt (Positive Scenarios)

  Scenario: User receives cancellation information prompt for another valid, cancellable order
    Given User is on the order tracking page
    When User enters order number "CANC_002"
    And User clicks the "Track Order" button
    Then The status message should display "I understand you want to cancel an order. Could you please provide more information about the issue you are experiencing so I can route you to the correct department? Here are some options:"
