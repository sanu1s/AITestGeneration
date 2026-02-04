Feature: Order Verification for Defective Items - Positive Scenarios

  Scenario: Successful verification with valid order number and zip code
    Given User is on the order verification page
    When User enters order number "ORD123456789" and billing zip code "90210"
    And User clicks the "Verify" button
    Then The verification should be successful with message "Order details verified successfully."
