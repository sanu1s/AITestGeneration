Feature: Order Tracking - Return Label Generation (Negative Scenarios)

  Scenario: System generates only one label when multiple are needed (Bug as per transcript)
    Given User is on the order tracking page
    When User enters order number "RET_MULTI_FAIL_003"
    And User clicks the "Track Order" button
    Then The status message should display "Return initiated. One label generated successfully."
