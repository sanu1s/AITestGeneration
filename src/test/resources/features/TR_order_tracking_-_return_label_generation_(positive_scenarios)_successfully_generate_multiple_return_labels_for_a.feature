Feature: Order Tracking - Return Label Generation (Positive Scenarios)

  Scenario: Successfully generate multiple return labels for an order
    Given User is on the order tracking page
    When User enters order number "RET_MULTI_002"
    And User clicks the "Track Order" button
    Then The status message should display "Return initiated. Two labels generated successfully."
