Feature: Back-ordered Item Payment - Positive Test Cases

  Scenario: Verify no charge message for a single back-ordered item
    Given User is on the order tracking page "https://example.com/trackorder"
    When User enters order number "BO_SINGLE_001"
    And User clicks the "Track Order" button
    Then The status message should display "Order BO_SINGLE_001 is back-ordered. No charge has been applied."
