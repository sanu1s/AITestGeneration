Feature: Price Adjustment Request Functionality - Negative Test Cases

  Scenario: Price Adjustment Request for an Order Not Eligible for Adjustment
    Given User is on the Price Adjustment Request page
    When User enters order number "ORD99999"
    And User specifies reason "Item I just ordered is now on sale"
    And User submits the price adjustment request
    Then The error message should display "Order ORD99999 is not eligible for price adjustment."
