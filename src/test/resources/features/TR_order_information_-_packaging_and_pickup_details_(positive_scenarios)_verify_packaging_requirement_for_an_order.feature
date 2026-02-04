Feature: Order Information - Packaging and Pickup Details (Positive Scenarios)

  Scenario: Verify Packaging Requirement for an Order
    Given User is on the order tracking page
    When User enters order number "PKG_REQ_001"
    And User clicks the "Track Order" button
    Then The status message should display "Order PKG_REQ_001 requires customer-provided packaging."
