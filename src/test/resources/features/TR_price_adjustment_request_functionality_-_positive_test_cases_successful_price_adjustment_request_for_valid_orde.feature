Feature: Price Adjustment Request Functionality - Positive Test Cases

  Scenario: Successful Price Adjustment Request for Valid Order
    Given User is on the Price Adjustment Request page
    When User enters order number "ORD78901"
    And User specifies reason "Item I just ordered is now on sale"
    And User submits the price adjustment request
    Then The success message should display "Price adjustment request for ORD78901 submitted successfully."
