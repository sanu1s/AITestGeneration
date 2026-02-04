Feature: Order Tracking - Contact Representative Prompt (Negative Cases)

  Scenario: Contact prompt appears unexpectedly for a valid order
    Given User is on the order tracking page
    When User enters order number "ORD-VALID-004"
    And User clicks the Track Order button
    Then The status message should not contain "Speak to a representative."
