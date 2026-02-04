Feature: Order Tracking - Verify Temporary Charge Message Display (Positive Scenarios)

  Scenario: Successful display for pre-authorized order
    Given User is on the order tracking page
    When User enters order number "PA_ORDER_1001"
    And User clicks the "Track Order" button
    Then The status message should display "The amount for the order total is not a charge and will drop off."
