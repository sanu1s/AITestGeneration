Feature: Order Inquiry by Zip Code - Negative Scenarios

  Scenario: Display error for a non-existent zip code
    Given User is on the order inquiry page
    When User enters zip code "00000"
    And User clicks the "Track Order" button
    Then The error message should display "No orders found for zip code 00000."
