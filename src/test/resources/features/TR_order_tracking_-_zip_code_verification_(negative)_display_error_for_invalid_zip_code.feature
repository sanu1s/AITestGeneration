Feature: Order Tracking - Zip Code Verification (Negative)

  Scenario: Display Error for Invalid Zip Code
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    And The system displays the prompt "Could you please provide the zip code associated with your order?"
    And User enters zip code "INVALID"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid zip code. Please enter a valid 5-digit zip code."
