Feature: Price Adjustment Request - Positive Scenarios

  Scenario: Successful price adjustment for another eligible order
    Given User is on the order tracking page
    When User enters order number "PA_ORD_456"
    And User clicks the "Track Order" button
    Then The status message should display "Your price adjustment request for order PA_ORD_456 has been submitted."
