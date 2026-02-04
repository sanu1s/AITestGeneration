Feature: Order Tracking - Positive Scenarios for Charge Information

  Scenario: Successfully verify the correct charged amount for a water bottle
    Given User is on the order tracking page
    When User enters order number "WB_CHARGE_123"
    And User clicks the Track Order button
    Then The status message should display "We have only charged you $31.57 for the water bottle."
