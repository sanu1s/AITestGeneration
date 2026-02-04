Feature: Order Tracking - Verify Erroneous Temporary Charge Message Display (Negative Scenarios)

  Scenario: Erroneous display for a fully charged order
    Given User is on the order tracking page
    When User enters order number "FINAL_PAID_789"
    And User clicks the "Track Order" button
    Then The status message should display "The amount for the order total is not a charge and will drop off."
