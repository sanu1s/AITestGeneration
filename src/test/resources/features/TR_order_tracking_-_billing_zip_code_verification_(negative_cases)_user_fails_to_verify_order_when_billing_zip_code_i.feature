Feature: Order Tracking - Billing Zip Code Verification (Negative Cases)

  Scenario: User fails to verify order when billing zip code is left blank
    Given User is on the Order Tracking page
    When User enters order number "ORD78901"
    And User clicks the "Track Order" button
    And The system requests "billing zip code for verification"
    And User leaves the billing zip code field blank
    And User clicks the "Verify" button
    Then The error message should display "Billing zip code is required for verification."
