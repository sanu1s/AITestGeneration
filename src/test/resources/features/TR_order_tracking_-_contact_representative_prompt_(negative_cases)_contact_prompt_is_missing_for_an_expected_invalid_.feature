Feature: Order Tracking - Contact Representative Prompt (Negative Cases)

  Scenario: Contact prompt is missing for an expected invalid order
    Given User is on the order tracking page
    When User enters order number "ORD-MISSING-003"
    And User clicks the Track Order button
    Then The error message should not contain "Speak to a representative."
