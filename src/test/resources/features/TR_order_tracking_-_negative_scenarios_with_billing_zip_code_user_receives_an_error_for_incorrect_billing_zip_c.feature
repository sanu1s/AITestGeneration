Feature: Order Tracking - Negative Scenarios with Billing Zip Code

  Scenario: User receives an error for incorrect billing zip code
    Given User is on the order tracking page
    When User enters order number "ORDER123"
    And User enters billing zip code "99999"
    And User clicks the "Track Order" button
    Then The error message should display "Incorrect billing zip code. Please try again."
