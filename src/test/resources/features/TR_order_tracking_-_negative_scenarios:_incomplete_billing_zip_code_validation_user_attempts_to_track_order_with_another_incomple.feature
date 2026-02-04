Feature: Order Tracking - Negative Scenarios: Incomplete Billing Zip Code Validation

  Scenario: User attempts to track order with another incomplete billing zip code
    Given User is on the order tracking page
    When User enters order number "ORD23456"
    And User enters incomplete billing zip code "9021"
    And User clicks the "Track Order" button
    Then The error message should display "The zip code you provided is incomplete. Please provide the full billing zip code associated with your order."
