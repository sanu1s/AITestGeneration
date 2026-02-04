Feature: Order Tracking - Billing Zip Code Verification (Negative Cases)

  Scenario: User fails to verify order with an incorrect billing zip code
    Given User is on the Order Tracking page
    When User enters order number "ORD78901"
    And User clicks the "Track Order" button
    And The system requests "billing zip code for verification"
    And User enters billing zip code "00000"
    And User clicks the "Verify" button
    Then The error message should display "Incorrect billing zip code provided."
