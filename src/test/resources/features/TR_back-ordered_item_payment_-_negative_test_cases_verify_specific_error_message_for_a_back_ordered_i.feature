Feature: Back-ordered Item Payment - Negative Test Cases

  Scenario: Verify specific error message for a back-ordered item with a failed payment attempt
    Given User is on the order tracking page "https://example.com/trackorder"
    When User enters order number "BO_CHARGE_004"
    And User clicks the "Track Order" button
    Then The error message should display "Transaction declined for BO_CHARGE_004: Item not yet in stock."
