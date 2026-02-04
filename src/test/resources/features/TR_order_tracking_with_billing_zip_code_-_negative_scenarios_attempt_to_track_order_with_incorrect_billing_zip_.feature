Feature: Order Tracking with Billing Zip Code - Negative Scenarios

  Scenario: Attempt to Track Order with Incorrect Billing Zip Code
    Given User is on the order tracking page
    When User enters order number "ORD11223"
    And User enters billing zip code "99999"
    And User clicks the "Track Order" button
    Then The error message should display "Incorrect billing zip code for order ORD11223"
