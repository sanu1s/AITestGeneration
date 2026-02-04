Feature: Order Tracking with Billing Zip Code - Negative Scenarios

  Scenario: Attempt to Track Order When Billing Zip Code is Required but Empty
    Given User is on the order tracking page
    When User enters order number "ORD44556"
    And User leaves billing zip code empty
    And User clicks the "Track Order" button
    Then The error message should display "Billing zip code is required for order ORD44556"
