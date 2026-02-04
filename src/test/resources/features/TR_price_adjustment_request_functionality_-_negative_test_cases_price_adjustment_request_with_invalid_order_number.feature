Feature: Price Adjustment Request Functionality - Negative Test Cases

  Scenario: Price Adjustment Request with Invalid Order Number
    Given User is on the Price Adjustment Request page
    When User enters order number "INVALID123"
    And User specifies reason "Item I just ordered is now on sale"
    And User submits the price adjustment request
    Then The error message should display "Invalid Order Number. Please check and try again."
