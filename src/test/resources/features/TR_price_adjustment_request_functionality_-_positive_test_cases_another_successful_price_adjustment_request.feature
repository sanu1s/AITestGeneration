Feature: Price Adjustment Request Functionality - Positive Test Cases

  Scenario: Another Successful Price Adjustment Request
    Given User is on the Price Adjustment Request page
    When User enters order number "ORD23456"
    And User specifies reason "Price drop for recent purchase"
    And User submits the price adjustment request
    Then The success message should display "Price adjustment request for ORD23456 submitted successfully."
