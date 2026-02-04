Feature: Order Tracking - Zip Code Verification (Negative)

  Scenario: Display Error for Empty Zip Code
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    And The system displays the prompt "Could you please provide the zip code associated with your order?"
    And User leaves the zip code field empty
    And User clicks the "Track Order" button
    Then The error message should display "Zip code is required."
