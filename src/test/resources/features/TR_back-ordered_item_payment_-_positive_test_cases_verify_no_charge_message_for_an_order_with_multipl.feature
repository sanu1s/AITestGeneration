Feature: Back-ordered Item Payment - Positive Test Cases

  Scenario: Verify no charge message for an order with multiple back-ordered items
    Given User is on the order tracking page "https://example.com/trackorder"
    When User enters order number "BO_MULTI_002"
    And User clicks the "Track Order" button
    Then The status message should display "Order BO_MULTI_002 contains back-ordered items. No charge has been applied."
