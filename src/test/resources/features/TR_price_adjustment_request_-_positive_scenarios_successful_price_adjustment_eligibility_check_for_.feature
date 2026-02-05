Feature: Price Adjustment Request - Positive Scenarios

  Scenario: Successful Price Adjustment Eligibility Check for another valid order
    Given User is on the "Price Adjustment Request" page
    When User enters a valid order number "ORD23456"
    And User clicks the "Check Eligibility" button
    Then The status message should display "Your order is eligible for price adjustment."
