Feature: Price Adjustment Request Functionality - Negative Test Cases

  Scenario: Price Adjustment Request for Ineligible Order
    Given User is on the Price Adjustment Request page
    When User enters order number "OLDORDER789"
    And User clicks the "Submit Price Adjustment" button
    Then An error message should display "Order OLDORDER789 is not eligible for price adjustment."
