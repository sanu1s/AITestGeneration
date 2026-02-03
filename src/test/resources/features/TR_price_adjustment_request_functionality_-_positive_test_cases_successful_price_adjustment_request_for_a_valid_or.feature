Feature: Price Adjustment Request Functionality - Positive Test Cases

  Scenario: Successful Price Adjustment Request for a valid order
    Given User is on the Price Adjustment Request page
    When User enters order number "PA12345"
    And User clicks the "Submit Price Adjustment" button
    Then A success message should display "Your price adjustment request for order PA12345 has been submitted."
