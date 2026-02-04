Feature: Order Tracking - Negative Scenarios

  Scenario: Display error for empty fields
    Given User is on the order tracking page
    When User enters order number "" and billing zip code ""
    And User clicks the "Track Order" button
    Then The error message should display "Order Number and Billing Zip Code are required."
