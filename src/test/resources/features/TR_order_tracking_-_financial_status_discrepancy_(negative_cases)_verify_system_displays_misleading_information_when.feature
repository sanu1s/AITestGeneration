Feature: Order Tracking - Financial Status Discrepancy (Negative Cases)

  Scenario: Verify system displays misleading information when a bank reservation exists
    Given User is on the order tracking page
    When User enters order number "ORD1004"
    And User clicks the "Track Order" button
    Then The status message should display "Order confirmed. No charges processed."
    And The status message should not contain "reserved"
    And The status message should not contain "hold"
