Feature: Order Information - Packaging and Pickup Details (Negative Scenarios)

  Scenario: Verify Packaging Not Required for an Order
    Given User is on the order tracking page
    When User enters order number "PKG_NOT_REQ_003"
    And User clicks the "Track Order" button
    Then The status message should display "Order PKG_NOT_REQ_003 includes provider-supplied packaging."
