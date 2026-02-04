Feature: Order Inquiry by Zip Code - Negative Scenarios

  Scenario: Display error for an invalid zip code format
    Given User is on the order inquiry page
    When User enters zip code "ABCDE"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Zip Code Format."
