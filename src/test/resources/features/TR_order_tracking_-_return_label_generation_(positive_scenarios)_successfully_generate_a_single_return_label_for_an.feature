Feature: Order Tracking - Return Label Generation (Positive Scenarios)

  Scenario: Successfully generate a single return label for an order
    Given User is on the order tracking page
    When User enters order number "RET_SINGLE_001"
    And User clicks the "Track Order" button
    Then The status message should display "Return initiated. One label generated successfully."
