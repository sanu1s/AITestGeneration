Feature: Order Tracking - Positive Scenarios for Charge Information

  Scenario: Successfully verify that order total is not a charge
    Given User is on the order tracking page
    When User enters order number "TOTAL_NOT_CHARGE_456"
    And User clicks the Track Order button
    Then The status message should display "The order total is not a charge and will fall off of your account."
