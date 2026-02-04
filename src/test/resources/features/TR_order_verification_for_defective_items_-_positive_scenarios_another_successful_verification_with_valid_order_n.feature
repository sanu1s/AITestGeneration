Feature: Order Verification for Defective Items - Positive Scenarios

  Scenario: Another successful verification with valid order number and zip code
    Given User is on the order verification page
    When User enters order number "ABC987654321" and billing zip code "10001"
    And User clicks the "Verify" button
    Then The verification should be successful with message "Order details verified successfully."
