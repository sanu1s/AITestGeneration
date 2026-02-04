Feature: Order Tracking - Restriction on Full Shipping Address (Negative)

  Scenario: Verify system explicitly states inability to display full shipping address for valid order ORD_VALID_004
    Given User is on the order tracking page
    When User enters order number "ORD_VALID_004"
    And User clicks the "Track Order" button
    Then The status message should display "For security reasons, I can't display the full shipping address."
